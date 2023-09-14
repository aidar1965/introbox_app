import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/profile_bloc.dart';

import '../../../domain/models/user.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FilePickerResult? file;
  String? imagePath;
  Image? image;
  File? pickedFile;
  ProfileBloc? _bloc;

  @override
  void didChangeDependencies() {
    _bloc = ProfileBloc();
    super.didChangeDependencies();
  }

  final firstnameController = TextEditingController();
  final secondnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc!,
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state.user != null) {
            User user = state.user!;
            firstnameController.text = user.firstName ?? '';
            secondnameController.text = user.secondName ?? '';
            lastnameController.text = user.lastName ?? '';
            aboutController.text = user.about ?? '';
          }
          return Stack(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                        onTap: () async {
                          var file = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['jpg', 'jpeg', 'svg'],
                          );
                          if (file != null) {
                            imagePath = file.paths.first!;
                            setState(() {
                              pickedFile = File(file.paths.first!);
                              image = Image.file(File(file.paths.first!));
                            });
                            _bloc!.add(
                                ProfileEvent.uploadImage(image: pickedFile!));
                          }
                        },
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
                                  (state.user?.imageUrl != null
                                      ? Image.network(state.user!.imageUrl!)
                                      : const Icon(
                                          Icons.person_rounded,
                                          size: 100,
                                          color: Colors.grey,
                                        ))),
                        )),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: lastnameController,
                        decoration: const InputDecoration(hintText: 'Фамилия'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: firstnameController,
                        decoration: const InputDecoration(hintText: 'Имя'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: secondnameController,
                        decoration: const InputDecoration(hintText: 'Отчество'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: aboutController,
                        maxLines: null,
                        decoration: const InputDecoration(hintText: 'Обо мне'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ProfileBloc>(context).add(
                              ProfileEvent.updateUser(
                                  firstname: firstnameController.text,
                                  secondname: secondnameController.text,
                                  lastname: lastnameController.text,
                                  about: aboutController.text));
                        },
                        child: const Text('Сохранить'))
                  ],
                ),
              ],
            ),
            Positioned(
                right: 20,
                top: 20,
                child: ElevatedButton(
                    onPressed: () => BlocProvider.of<ProfileBloc>(context)
                        .add(const ProfileEvent.logout()),
                    child: const Text('Выйти')))
          ]);
        },
      ),
    );
  }
}
