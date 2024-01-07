import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_elevated_button.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import '../../auto_router/app_router.dart';
import '../../common/common_loading_error_widget.dart';
import '../../theme/dynamic_theme.dart';
import 'bloc/profile_bloc.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProfileBloc(),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) => state.mapOrNull(
              logoutSuccess: (_) => context.router.push(const LoginRoute()),
              requestError: (state) => CommonFunctions.showMessage(
                  context, 'Не удалось обновить данные', Reason.error)),
          buildWhen: (previous, current) => current.maybeMap(
            orElse: () => false,
            screenState: (_) => true,
            pending: (_) => true,
            loadingError: (_) => true,
          ),
          builder: (context, state) => state.maybeMap(
            orElse: () => throw UnsupportedError(''),
            pending: (_) => Scaffold(
              appBar: AppBar(
                  title: Text(
                'Профиль',
              )),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loadingError: (_) => Scaffold(
                appBar: AppBar(
                    title: Text(
                  'Профиль',
                )),
                body: Stack(children: [
                  CommonLoadingErrorWidget(
                    onPressed: () => BlocProvider.of<ProfileBloc>(context)
                        .add(const ProfileEvent.dataRequested()),
                  ),
                  Positioned(
                      right: 20,
                      top: 20,
                      child: IconButton(
                          onPressed: () => BlocProvider.of<ProfileBloc>(context)
                              .add(const ProfileEvent.logout()),
                          icon: const Icon(Icons.logout)))
                ])),
            screenState: (state) {
              return _ScreenView(
                firstName: state.user.firstName ?? '',
                lastName: state.user.lastName ?? '',
                secondName: state.user.secondName,
                about: state.user.about,
                imagePath: state.user.imageUrl,
              );
            },
          ),
        ));
  }
}

class _ScreenView extends StatefulWidget {
  _ScreenView(
      {super.key,
      required this.firstName,
      this.secondName,
      required this.lastName,
      this.about,
      this.imagePath});

  final String firstName;
  final String? secondName;
  final String lastName;
  final String? about;
  final String? imagePath;

  final firstnameController = TextEditingController();
  final secondnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final aboutController = TextEditingController();

  @override
  State<_ScreenView> createState() => __ScreenViewState();
}

class __ScreenViewState extends State<_ScreenView> {
  FilePickerResult? file;
  Uint8List? imageBytes;
  Image? image;

  File? pickedFile;

  @override
  void initState() {
    super.initState();
    widget.firstnameController.text = widget.firstName;
    widget.secondnameController.text = widget.secondName ?? '';
    widget.lastnameController.text = widget.lastName;
    widget.aboutController.text = widget.about ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Профиль',
      )),
      body: Stack(children: [
        SingleChildScrollView(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                  onTap: () async {
                    var file = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['jpg', 'jpeg', 'png', 'webp', 'gif'],
                    );
                    if (file != null) {
                      imageBytes = file.files.first.bytes;
                      setState(() {
                        image = Image.memory(imageBytes!);
                      });
                    }
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 64),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: image ??
                                (widget.imagePath != null
                                    ? Image.network(widget.imagePath!)
                                    : const Icon(
                                        Icons.person_rounded,
                                        size: 100,
                                        color: Colors.grey,
                                      ))),
                      ))),
              const SizedBox(height: 12),
              SizedBox(
                width: 300,
                child: TextField(
                    controller: widget.lastnameController,
                    decoration: InputDecoration(
                      labelText: 'Фамилия',
                      labelStyle: TextStyle(
                          color: DynamicTheme.paletteOf(context).text2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: DynamicTheme.paletteOf(context).accent),
                        //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: DynamicTheme.paletteOf(context).accent),
                        //<-- SEE HERE
                      ),
                    )),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: widget.firstnameController,
                  decoration: InputDecoration(
                    labelText: 'Имя',
                    labelStyle:
                        TextStyle(color: DynamicTheme.paletteOf(context).text2),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: DynamicTheme.paletteOf(context).accent),
                      //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: DynamicTheme.paletteOf(context).accent),
                      //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: widget.secondnameController,
                  decoration: InputDecoration(
                    labelText: 'Отчество',
                    labelStyle:
                        TextStyle(color: DynamicTheme.paletteOf(context).text2),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: DynamicTheme.paletteOf(context).accent),
                      //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: DynamicTheme.paletteOf(context).accent),
                      //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: widget.aboutController,
                  minLines: 4,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Обо мне',
                    labelStyle:
                        TextStyle(color: DynamicTheme.paletteOf(context).text2),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: DynamicTheme.paletteOf(context).accent),
                      //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: DynamicTheme.paletteOf(context).accent),
                      //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 300,
                  child: CommonElevatedButton(
                      onPressed: () {
                        BlocProvider.of<ProfileBloc>(context).add(
                            ProfileEvent.updateUser(
                                firstname: widget.firstnameController.text,
                                secondname: widget.secondnameController.text,
                                lastname: widget.lastnameController.text,
                                about: widget.aboutController.text,
                                imageBytes: imageBytes));
                      },
                      text: 'Сохранить'))
            ],
          )
        ])),
        Positioned(
            right: 20,
            top: 20,
            child: IconButton(
                onPressed: () => BlocProvider.of<ProfileBloc>(context)
                    .add(const ProfileEvent.logout()),
                icon: const Icon(Icons.logout)))
      ]),
    );
  }
}
