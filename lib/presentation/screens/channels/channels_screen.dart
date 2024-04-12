import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:introbox/presentation/auto_router/app_router.dart';

import 'package:introbox/presentation/common/common_elevated_button.dart';
import 'package:introbox/presentation/common/common_functions.dart';
import 'package:introbox/presentation/common/common_loading_error_widget.dart';
import 'package:introbox/presentation/utils/responsive.dart';

import '../../../domain/models/channel.dart';

import '../../../domain/models/company.dart';
import '../../../generated/locale_keys.g.dart';
import '../../widgets/name_and_description.dart';
import 'bloc/channels_bloc.dart';

@RoutePage()
class ChannelsScreen extends StatelessWidget {
  const ChannelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ChannelsBloc(),
        child: BlocConsumer<ChannelsBloc, ChannelsState>(
          listener: (context, state) => state.mapOrNull(
              requestError: (state) =>
                  onAddChannelError(context, state.errorText),
              requestSuccess: (_) => onAddChannelSuccess(context)),
          buildWhen: (previous, current) => current.maybeMap(
              orElse: () => false,
              pending: (_) => true,
              initialLoadingError: (_) => true,
              screenState: (_) => true),
          builder: (context, state) => Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () {
                  context.router.push(PresentationsRoute());
                },
              ),
              title: Text(LocaleKeys.channels.tr()),
              actions: [
                IconButton(
                    onPressed: () async {
                      final result = await _onAddChannelPressed(context);
                      if (result is AddChannelFormData) {
                        if (context.mounted) {
                          BlocProvider.of<ChannelsBloc>(context).add(
                              ChannelsEvent.onCreateChannel(
                                  title: result.title,
                                  channelTypeId: result.channelTypeId,
                                  description: result.description,
                                  isPublic: result.isPublic));
                        }
                      }
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            //  drawer: const CommonNavigationDrawer(),
            body: state.maybeMap(
                orElse: () =>
                    throw UnsupportedError('state not supporting building'),
                pending: (_) =>
                    const Center(child: CircularProgressIndicator()),
                initialLoadingError: (_) => CommonLoadingErrorWidget(
                    onPressed: () => BlocProvider.of<ChannelsBloc>(context)
                        .add(const ChannelsEvent.initialDataRequested())),
                screenState: (state) => _ScreenView(
                      channels: state.channels,
                      companies: state.companies,
                    )),
          ),
        ));
  }

  Future<AddChannelFormData?> _onAddChannelPressed(BuildContext context) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    int selectedChannelType = 1;
    bool isPublic = true;
    final result = await showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(LocaleKeys.createChannel.tr()),
        contentPadding: const EdgeInsets.all(24),
        children: [
          NameAndDescriptionWidget(
              titleController: titleController,
              descriptionController: descriptionController),
          const SizedBox(
            height: 12,
          ),
          ChannelSelect(onSelect: (v, c) {
            selectedChannelType = v;
            isPublic = c;
          }),
          const SizedBox(
            height: 12,
          ),
          CommonElevatedButton(
              text: LocaleKeys.createChannel.tr(),
              onPressed: () {
                context.router.pop(AddChannelFormData(
                    title: titleController.text,
                    channelTypeId: selectedChannelType,
                    description: descriptionController.text,
                    isPublic: isPublic));
              }),
          const SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () => context.router.pop(),
              child: Text(LocaleKeys.buttonCancel.tr()))
        ],
      ),
    );
    return result;
  }

  void onAddChannelError(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(
        context, errorText ?? LocaleKeys.commonRequestError.tr(), Reason.error);
  }

  void onAddChannelSuccess(BuildContext context) {
    CommonFunctions.showMessage(
        context, LocaleKeys.channelCreateSuccess.tr(), Reason.neutral);
  }
}

class _ScreenView extends StatelessWidget {
  const _ScreenView({
    super.key,
    required this.channels,
    required this.companies,
  });

  final List<Channel> channels;
  final List<Company> companies;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(),
        itemCount: channels.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () async {
                final result = await _onEditChannelClicked(
                    context, channels.elementAt(index));
                if (result is AddChannelFormData) {
                  if (context.mounted) {
                    BlocProvider.of<ChannelsBloc>(context).add(
                        ChannelsEvent.onEditChannel(
                            channelId: channels.elementAt(index).id,
                            title: result.title,
                            channelTypeId: result.channelTypeId,
                            description: result.description,
                            isPublic: result.isPublic));
                  }
                }
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    channels.elementAt(index).title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: Responsive.isMobile(context) ? 12 : 24),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(channels.elementAt(index).description ?? '',
                      style: const TextStyle(color: Colors.black)),
                  if (channels.elementAt(index).channelType !=
                      ChannelType.private)
                    TextButton(
                        onPressed: () async {
                          final result = await _onAddCompanyClicked(
                              context,
                              companies,
                              companies.firstWhereOrNull((e) =>
                                  e.id ==
                                  channels.elementAt(index).company?.id));
                          if (result is String) {
                            if (context.mounted) {
                              BlocProvider.of<ChannelsBloc>(context).add(
                                  ChannelsEvent.onAddCompanyToChannel(
                                      channelId: channels.elementAt(index).id,
                                      companyId: result));
                            }
                          }
                        },
                        child: Text(channels.elementAt(index).company == null
                            ? LocaleKeys.addCompany.tr()
                            : channels.elementAt(index).company!.name))
                ],
              ),
              trailing: IconButton(
                  icon: const Icon(
                    Icons.delete_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () => _showDeleteConfirmDialog(
                      context,
                      channels.elementAt(index).id,
                      () => BlocProvider.of<ChannelsBloc>(context).add(
                          ChannelsEvent.onDeleteChannel(
                              id: channels.elementAt(index).id)))),
            ));
  }

  Future<void> _showDeleteConfirmDialog(
      BuildContext context, String id, Function() onDeleteConfirmed) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        return AlertDialog(
          // <-- SEE HERE
          title: Text(LocaleKeys.deletionChannel.tr()),
          content: Text(LocaleKeys.deleteChannelConfirmationMessage.tr()),

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

  Future<String?> _onAddCompanyClicked(BuildContext context,
      List<Company> companies, Company? selectedCompany) async {
    String? selectedId;
    final result = await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
                title: Text(LocaleKeys.addCompany.tr()),
                contentPadding: const EdgeInsets.all(24),
                children: [
                  CompanySelect(
                    companies: companies,
                    selectedCompany: selectedCompany,
                    onSelect: (v) {
                      selectedId = v;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonElevatedButton(
                      text: LocaleKeys.buttonSave.tr(),
                      onPressed: () {
                        context.router.pop(selectedId);
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

  Future<AddChannelFormData?> _onEditChannelClicked(
      BuildContext context, Channel channel) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    titleController.text = channel.title;
    descriptionController.text = channel.description ?? '';

    int selectedChannelType = idFromChannelType(channel.channelType);
    bool isPublic = channel.isPublic;
    final result = await showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(LocaleKeys.editChannel.tr()),
        contentPadding: const EdgeInsets.all(24),
        children: [
          NameAndDescriptionWidget(
              titleController: titleController,
              descriptionController: descriptionController),
          const SizedBox(
            height: 12,
          ),
          ChannelSelect(onSelect: (v, c) {
            selectedChannelType = v;
            isPublic = c;
          }),
          const SizedBox(
            height: 12,
          ),
          CommonElevatedButton(
              text: LocaleKeys.buttonSave.tr(),
              onPressed: () {
                context.router.pop(AddChannelFormData(
                    title: titleController.text,
                    channelTypeId: selectedChannelType,
                    description: descriptionController.text,
                    isPublic: isPublic));
              }),
          const SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () => context.router.pop(),
              child: Text(LocaleKeys.buttonCancel.tr()))
        ],
      ),
    );
    return result;
  }

  int idFromChannelType(ChannelType channelType) {
    if (channelType == ChannelType.private) {
      return 1;
    } else if (channelType == ChannelType.commercial) {
      return 2;
    } else if (channelType == ChannelType.education) {
      return 3;
    } else if (channelType == ChannelType.government) {
      return 4;
    } else {
      return 1;
    }
  }
}

class CompanySelect extends StatefulWidget {
  const CompanySelect(
      {super.key,
      required this.onSelect,
      required this.companies,
      this.selectedCompany});

  final Function(String) onSelect;
  final List<Company> companies;
  final Company? selectedCompany;

  @override
  State<CompanySelect> createState() => _CompanySelectState();
}

class _CompanySelectState extends State<CompanySelect> {
  List<Widget> radioWidgets = [];
  String? selectedId;

  @override
  void initState() {
    super.initState();
    selectedId = widget.selectedCompany?.id ?? 'no_company';
  }

  void _onChanged(v) {
    setState(() {
      selectedId = v;
    });
    widget.onSelect(selectedId!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            LocaleKeys.noCompany.tr(),
            style: const TextStyle(color: Colors.black),
          ),
          leading: Radio(
            value: 'no_company',
            groupValue: selectedId,
            onChanged: _onChanged,
          ),
        ),
        ...widget.companies
            .map((company) => ListTile(
                  title: Text(
                    company.name,
                    style: const TextStyle(color: Colors.black),
                  ),
                  leading: Radio(
                    value: company.id,
                    groupValue: selectedId,
                    onChanged: _onChanged,
                  ),
                ))
            .toList(),
      ],
    );
  }
}

class ChannelSelect extends StatefulWidget {
  const ChannelSelect({super.key, required this.onSelect});

  final Function(int, bool) onSelect;

  @override
  State<ChannelSelect> createState() => _ChannelSelectState();
}

class _ChannelSelectState extends State<ChannelSelect> {
  int selectedChannelType = 1;
  bool isPublic = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
            title: Text(
              LocaleKeys.optionPersonal.tr(),
              style: const TextStyle(color: Colors.black),
            ),
            leading: Radio(
              value: 1,
              groupValue: selectedChannelType,
              onChanged: (value) {
                setState(() {
                  selectedChannelType = value!;
                });
                widget.onSelect(selectedChannelType, isPublic);
              },
            )),
        ListTile(
            title: Text(
              LocaleKeys.optionCompany.tr(),
              style: const TextStyle(color: Colors.black),
            ),
            leading: Radio(
              value: 2,
              groupValue: selectedChannelType,
              onChanged: (value) {
                setState(() {
                  selectedChannelType = value!;
                });
                widget.onSelect(selectedChannelType, isPublic);
              },
            )),
        ListTile(
            title: Text(
              LocaleKeys.optionEdu.tr(),
              style: const TextStyle(color: Colors.black),
            ),
            leading: Radio(
              value: 3,
              groupValue: selectedChannelType,
              onChanged: (value) {
                setState(() {
                  selectedChannelType = value!;
                });
                widget.onSelect(selectedChannelType, isPublic);
              },
            )),
        ListTile(
            title: Text(
              LocaleKeys.optionGov.tr(),
              style: const TextStyle(color: Colors.black),
            ),
            leading: Radio(
              value: 4,
              groupValue: selectedChannelType,
              onChanged: (value) {
                setState(() {
                  selectedChannelType = value!;
                });
                widget.onSelect(selectedChannelType, isPublic);
              },
            )),
        ListTile(
            title: Text(
              LocaleKeys.optionPublic.tr(),
              style: const TextStyle(color: Colors.black),
            ),
            leading: Radio(
              value: true,
              groupValue: isPublic,
              onChanged: (value) {
                setState(() {
                  isPublic = value!;
                });
                widget.onSelect(selectedChannelType, isPublic);
              },
            )),
        ListTile(
            title: Text(
              LocaleKeys.optionClosed.tr(),
              style: const TextStyle(color: Colors.black),
            ),
            leading: Radio(
              value: false,
              groupValue: isPublic,
              onChanged: (value) {
                setState(() {
                  isPublic = value!;
                });
                widget.onSelect(selectedChannelType, isPublic);
              },
            )),
      ],
    );
  }
}

class AddChannelFormData {
  final String title;
  final int channelTypeId;
  final String? description;
  final bool isPublic;
  AddChannelFormData(
      {required this.title,
      required this.channelTypeId,
      this.description,
      required this.isPublic});
}
