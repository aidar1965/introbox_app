part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.dataRequested() = _EventDataRequested;
  const factory ProfileEvent.logout() = _Logout;
  const factory ProfileEvent.updateUser({
    required String firstname,
    required String lastname,
    String? secondname,
    String? about,
    String? image,
  }) = _UpdateUser;
}
