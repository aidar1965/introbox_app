part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.logout() = _Logout;
  const factory ProfileEvent.updateUser({
    required String firstname,
    required String lastname,
    String? secondname,
    String? about,
  }) = _UpdateUser;

  const factory ProfileEvent.uploadImage({required File image}) = _UploadImage;
}
