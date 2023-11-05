part of 'confirmation_bloc.dart';

@freezed
class ConfirmationEvent with _$ConfirmationEvent {
  const factory ConfirmationEvent.confirmSubmitted(
      {required String email,
      required String code}) = _EventConfirmationSubmitted;
}
