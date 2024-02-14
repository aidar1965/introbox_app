import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/domain/models/company.dart';
import 'package:moki_tutor/presentation/auto_router/app_router.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/screens/companies/bloc/companies_bloc.dart';

import '../../common/common_elevated_button.dart';
import '../../common/common_loading_error_widget.dart';

///import '../../common/common_navigation_drawer.dart';
import '../../widgets/name_and_description.dart';

@RoutePage()
class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompaniesBloc(),
      child: BlocConsumer<CompaniesBloc, CompaniesState>(
          listener: (context, state) => state.mapOrNull(
              requestError: (state) => CommonFunctions.showMessage(
                  context,
                  state.errorText ??
                      'Произошла непредвиденная ошибка, повторите запрос',
                  Reason.error),
              requestSuccess: (_) => BlocProvider.of<CompaniesBloc>(context)
                  .add(const CompaniesEvent.initialDataRequested())),
          buildWhen: ((previous, current) => current.maybeMap(
              initialLoadingError: (_) => true,
              screenState: (_) => true,
              pending: (_) => true,
              orElse: () => false)),
          builder: (context, state) => state.maybeMap(
              orElse: () =>
                  throw UnsupportedError('tetate not supporting building'),
              pending: (_) => Scaffold(
                  appBar: AppBar(
                    leading: BackButton(
                      onPressed: () {
                        context.router.push(const PresentationsRoute());
                      },
                    ),
                    title: const Text('Компании'),
                  ),
                  //    drawer: const CommonNavigationDrawer(),
                  body: const Center(child: CircularProgressIndicator())),
              initialLoadingError: (_) => Scaffold(
                  appBar: AppBar(
                    leading: BackButton(
                      onPressed: () {
                        context.router.push(const PresentationsRoute());
                      },
                    ),
                    title: const Text('Компании'),
                  ),
                  //       drawer: const CommonNavigationDrawer(),
                  body: CommonLoadingErrorWidget(
                    onPressed: () => BlocProvider.of<CompaniesBloc>(context)
                        .add(const CompaniesEvent.initialDataRequested()),
                  )),
              screenState: (state) => _ScreenView(companies: state.companies))),
    );
  }
}

class _ScreenView extends StatelessWidget {
  const _ScreenView({super.key, required this.companies});

  final List<Company> companies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.router.push(const PresentationsRoute());
          },
        ),
        title: const Text('Компании'),
        actions: [
          IconButton(
              onPressed: () async {
                final result = await _onAddCompanyPressed(context);
                if (result is AddCompanyFormData) {
                  if (context.mounted) {
                    BlocProvider.of<CompaniesBloc>(context)
                        .add(CompaniesEvent.onCreateCompany(
                      name: result.name,
                      website: result.website,
                    ));
                  }
                }
              },
              icon: const Icon(Icons.add))
        ],
      ),

      ///  drawer: const CommonNavigationDrawer(),
      body: companies.length > 0
          ? ListView.builder(
              itemCount: companies.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text(
                      companies.elementAt(index).name,
                      style: const TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(companies.elementAt(index).description ?? '',
                        style: const TextStyle(color: Colors.black)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          onPressed: () async {
                            final result = await _onEditCompanyClicked(
                                context, companies.elementAt(index));
                            if (result is AddCompanyFormData) {
                              if (context.mounted) {
                                BlocProvider.of<CompaniesBloc>(context).add(
                                    CompaniesEvent.onEditCompany(
                                        name: result.name,
                                        website: result.website,
                                        selectedCompany:
                                            companies.elementAt(index)));
                              }
                            }
                          },
                        ),
                        IconButton(
                            onPressed: () {
                              BlocProvider.of<CompaniesBloc>(context).add(
                                  CompaniesEvent.onDeleteCompany(
                                      id: companies.elementAt(index).id));
                            },
                            icon: Icon(
                              Icons.delete_rounded,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ))
          : Center(
              child: Text('Компании еще не внесены'),
            ),
    );
  }

  Future<AddCompanyFormData?> _onAddCompanyPressed(BuildContext context) async {
    final titleController = TextEditingController();
    final websiteController = TextEditingController();

    final result = await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
                title: const Text('Добавление компании'),
                contentPadding: const EdgeInsets.all(24),
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: 300),
                    child: NameAndDescriptionWidget(
                      titleController: titleController,
                      descriptionController: websiteController,
                      descriptionLabelName: 'Ссылка на вебсайт',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonElevatedButton(
                      text: 'Сохранить',
                      onPressed: () {
                        context.router.pop(AddCompanyFormData(
                          name: titleController.text,
                          website: websiteController.text,
                        ));
                      }),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                      onPressed: () => context.router.pop(),
                      child: const Text('Отмена'))
                ]));
    return result;
  }

  Future<AddCompanyFormData?> _onEditCompanyClicked(
      BuildContext context, Company company) async {
    final titleController = TextEditingController();

    final websiteController = TextEditingController();

    titleController.text = company.name;
    websiteController.text = company.website ?? '';

    final result = await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
                title: const Text('Добавление компании'),
                contentPadding: const EdgeInsets.all(24),
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: 300),
                    child: NameAndDescriptionWidget(
                      titleController: titleController,
                      descriptionController: websiteController,
                      descriptionLabelName: 'Ссылка на вебсайт',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonElevatedButton(
                      text: 'Сохранить',
                      onPressed: () {
                        context.router.pop(AddCompanyFormData(
                          name: titleController.text,
                          website: websiteController.text,
                        ));
                      }),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                      onPressed: () => context.router.pop(),
                      child: const Text('Отмена'))
                ]));
    return result;
  }
}

class AddCompanyFormData {
  final String name;

  final String? website;

  AddCompanyFormData({required this.name, this.website});
}
