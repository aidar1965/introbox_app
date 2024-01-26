part of 'recover_password_bloc.dart';

@freezed
class RecoverPasswordEvent with _$RecoverPasswordEvent {
  const factory RecoverPasswordEvent.recover({
    required String email,
  }) = _EventRecover;
}
