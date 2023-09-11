import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/domain/di/di.dart';
import 'package:intl/intl.dart';

import 'package:moki_tutor/presentation/auto_router/app_router.gr.dart';

import '../../../domain/models/record.dart';
import '../../../domain/models/record_category.dart';
import 'bloc/records_bloc.dart';
import '../home_screen/bloc/home_bloc.dart';
import '../widgets/add_category_form.dart';

@RoutePage()
class RecordsScreen extends StatelessWidget {
  const RecordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Di.of(context).buildRecordsBloc(),
      child: BlocConsumer<RecordsBloc, RecordsState>(
          listener: (context, state) => state.mapOrNull(
                addRecord: (state) =>
                    context.router.push(const RecordingScreenRoute()),
              ),
          buildWhen: (context, state) => state.maybeMap(
              pending: (_) => true,
              dataReceived: (state) => true,
              orElse: () => false),
          builder: (context, state) => state.maybeMap(
              pending: (_) => const PendingView(),
              dataReceived: (state) => RecordsView(
                    records: state.records,
                    categories: state.categories,
                    selectedCategories: state.selectedCategories,
                  ),
              orElse: () =>
                  throw UnimplementedError('Ошибка на RecordsScreen'))),
    );
  }
}

class PendingView extends StatelessWidget {
  const PendingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class RecordsView extends StatelessWidget {
  const RecordsView(
      {Key? key,
      required this.records,
      required this.categories,
      required this.selectedCategories})
      : super(key: key);

  final List<Record> records;
  final List<RecordCategory> categories;
  final List<RecordCategory> selectedCategories;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          SizedBox(
              width: 250,
              child: Column(children: [
                const Text('Категории'),
                const Divider(),
                _CategoryList(
                    categories: categories,
                    selectedCategories: selectedCategories),
              ])),
          const VerticalDivider(),
          Expanded(
            child: Center(
              child: RecordsListView(
                records: records,
                categories: categories,
              ),
            ),
          )
        ],
      ),
      Positioned(
        right: 10,
        bottom: 10,
        child: FloatingActionButton(
            onPressed: () => BlocProvider.of<RecordsBloc>(context)
                .add(const RecordsEvent.newRecord()),
            tooltip: 'Новая запись',
            child: const Icon(Icons.add)),
      ),
    ]);
  }
}

class _CategoryList extends StatelessWidget {
  _CategoryList({
    Key? key,
    this.categories,
    this.selectedCategories,
  }) : super(key: key);

  final List<RecordCategory>? categories;
  final List<RecordCategory>? selectedCategories;
  final ScrollController firstListController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return categories != null
        ? ListView.builder(
            controller: firstListController,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: categories!.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 30,
                child: GestureDetector(
                  onLongPress: () async {
                    var bloc = BlocProvider.of<RecordsBloc>(context);
                    Map<String, dynamic>? response =
                        await showDialog<Map<String, dynamic>>(
                            context: context,
                            builder: (context) => Dialog(
                                    child: AddCategoryForm(
                                  category: categories!.elementAt(index),
                                )));
                    if (response != null) {
                      if (response['action'] == 'edit') {
                        var categoryName = response['name'] as String?;
                        if (categoryName != null &&
                            categoryName != categories?.elementAt(index).name) {
                          var updatedCategory = categories
                              ?.elementAt(index)
                              .copyWith(name: categoryName);
                          bloc.add(RecordsEvent.editCategory(updatedCategory!));
                        }
                      } else {
                        if (response['action'] == 'delete') {
                          bloc.add(RecordsEvent.deleteCategory(
                              categories!.elementAt(index)));
                        }
                      }
                    }
                  },
                  child: CheckboxListTile(
                    title: Text(categories!.elementAt(index).name),
                    value: selectedCategories!
                        .contains(categories!.elementAt(index)),
                    onChanged: (value) {
                      BlocProvider.of<RecordsBloc>(context).add(
                          RecordsEvent.selectCategory(
                              categories!.elementAt(index)));
                    },
                  ),
                ),
              );
            },
          )
        : const SizedBox();
  }
}

class RecordsListView extends StatelessWidget {
  const RecordsListView(
      {Key? key, required this.records, required this.categories})
      : super(key: key);

  final List<Record> records;
  final List<RecordCategory> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 540,
        child: ListView.builder(
            itemCount: records.length,
            itemBuilder: (context, index) {
              var record = records.elementAt(index);
              return RecordListTile(record: record);
            }));
  }
}

class RecordListTile extends StatelessWidget {
  const RecordListTile({Key? key, required this.record}) : super(key: key);
  final Record record;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
          height: 60,
          width: 60,
          child: Center(
              child: record.images != null
                  ? Image.file(File(record.images!.keys.first))
                  : const SizedBox())),
      title: GestureDetector(
          onTap: () => context.router.push(EditRecordScreenRoute(
                record: record,
              )),
          child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Tooltip(
                  margin: const EdgeInsets.symmetric(horizontal: 100),
                  message: record.description ?? 'Нет описания',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(record.title),
                      Align(
                          alignment: Alignment.bottomRight,
                          child:
                              Text(DateFormat('dd.MM.yy').format(record.date))),
                    ],
                  )))),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            iconSize: 24,
            onPressed: () => BlocProvider.of<HomeBloc>(context)
                .add(HomeEvent.openPlayer(record: record)),
            icon: const Icon(Icons.play_circle),
          ),
          const SizedBox(width: 20),
          IconButton(
            iconSize: 24,
            onPressed: () {}, // TODO: delete
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}

class RecordCard extends StatelessWidget {
  const RecordCard({Key? key, required this.record, required this.categories})
      : super(key: key);

  final Record record;
  final List<RecordCategory> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => context.router.push(EditRecordScreenRoute(
            record: record,
          )),
          child: record.imagePath != ''
              ? MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Center(child: Image.file(File(record.imagePath))),
                )
              : const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(
                    Icons.image,
                    size: 180,
                    color: Colors.grey,
                  ),
                ),
        ),
        const SizedBox(
          height: 0,
        ),
        Tooltip(
          message: record.description ?? 'Нет описания',
          margin: const EdgeInsets.symmetric(horizontal: 100),
          child: ListTile(
              title: Text(
                  '${record.title} ${DateFormat('dd.MM.yy').format(record.date)}'),
              leading: SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  iconSize: 24,
                  onPressed: () => BlocProvider.of<HomeBloc>(context)
                      .add(HomeEvent.openPlayer(record: record)),
                  icon: const Icon(Icons.play_circle),
                ),
              )),
        ),
      ],
    );
  }
}
