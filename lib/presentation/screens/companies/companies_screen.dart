import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbox/domain/models/company.dart';
import 'package:introbox/presentation/auto_router/app_router.dart';
import 'package:introbox/presentation/common/common_functions.dart';
import 'package:introbox/presentation/screens/companies/bloc/companies_bloc.dart';

import '../../../generated/locale_keys.g.dart';
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
                  state.errorText ?? LocaleKeys.commonRequestError.tr(),
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
                  throw UnsupportedError('state not supporting building'),
              pending: (_) => Scaffold(
                  appBar: AppBar(
                    leading: BackButton(
                      onPressed: () {
                        context.router.push(const PresentationsRoute());
                      },
                    ),
                    title: Text(LocaleKeys.companies.tr()),
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
                    title: Text(LocaleKeys.companies.tr()),
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
        title: Text(LocaleKeys.companies.tr()),
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
      body: companies.isNotEmpty
          ? ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(),
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
                            onPressed: () => _showDeleteConfirmDialog(
                                context,
                                companies.elementAt(index).id,
                                () => BlocProvider.of<CompaniesBloc>(context)
                                    .add(CompaniesEvent.onDeleteCompany(
                                        id: companies.elementAt(index).id))),
                            icon: const Icon(
                              Icons.delete_rounded,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ))
          : Center(
              child: Text(LocaleKeys.companiesNotFound.tr()),
            ),
    );
  }

  Future<void> _showDeleteConfirmDialog(
      BuildContext context, String id, Function() onDeleteConfirmed) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        return AlertDialog(
          // <-- SEE HERE
          title: Text(LocaleKeys.deleteCompany.tr()),
          content: Text(LocaleKeys.deleteCompanyConfirmationMessage.tr()),

          actions: <Widget>[
            TextButton(
              child: Text(LocaleKeys.buttonCancel.tr()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(LocaleKeys.buttonDelete.tr()),
              onPressed: () {
                onDeleteConfirmed();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<AddCompanyFormData?> _onAddCompanyPressed(BuildContext context) async {
    final titleController = TextEditingController();
    final websiteController = TextEditingController();

    final result = await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
                title: Text(LocaleKeys.addCompany.tr()),
                contentPadding: const EdgeInsets.all(24),
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: 300),
                    child: NameAndDescriptionWidget(
                      titleController: titleController,
                      descriptionController: websiteController,
                      descriptionLabelName: LocaleKeys.websiteLink.tr(),
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
                      child: Text(LocaleKeys.buttonCancel.tr()))
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
                title: Text(LocaleKeys.addCompany.tr()),
                contentPadding: const EdgeInsets.all(24),
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: 300),
                    child: NameAndDescriptionWidget(
                      titleController: titleController,
                      descriptionController: websiteController,
                      descriptionLabelName: LocaleKeys.websiteLink.tr(),
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
                      child: Text(LocaleKeys.buttonCancel.tr()))
                ]));
    return result;
  }
}

class AddCompanyFormData {
  final String name;

  final String? website;

  AddCompanyFormData({required this.name, this.website});
}
