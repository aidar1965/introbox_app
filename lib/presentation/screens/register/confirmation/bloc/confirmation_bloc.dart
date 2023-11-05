import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/data/api/http_client/request_exception.dart';

import '../../../../../domain/interfaces/i_api.dart';
import '../../../../../domain/locator/locator.dart';

part 'confirmation_event.dart';
part 'confirmation_state.dart';
part 'confirmation_bloc.freezed.dart';

class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  ConfirmationBloc()
      : super(const ConfirmationState.screenState(isPending: false)) {
    on<ConfirmationEvent>((event, emitter) => event.map(
        confirmSubmitted: (event) => _confirmSubmitted(event, emitter)));
  }

  final api = getIt<IApi>();

  _confirmSubmitted(_EventConfirmationSubmitted event,
      Emitter<ConfirmationState> emitter) async {
    emitter(const ConfirmationState.screenState(isPending: true));
    try {
      await api.confirm(email: event.email, code: event.code);
      emitter(const ConfirmationState.confirmationSuccess());
    } on RequestException catch (e) {
      emitter(
          // TODO
          ConfirmationState.confirmationError(
              errorText: e.httpStatusCode.toString()));
      rethrow;
    } on Object {
      emitter(const ConfirmationState.confirmationError());
      rethrow;
    } finally {
      emitter(const ConfirmationState.screenState(isPending: false));
    }
  }
}
