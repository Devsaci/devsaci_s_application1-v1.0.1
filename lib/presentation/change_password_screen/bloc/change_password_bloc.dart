import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:devsaci_s_application1/presentation/change_password_screen/models/change_password_model.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

/// A bloc that manages the state of a ChangePassword according to the event that is dispatched to it.
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc(ChangePasswordState initialState) : super(initialState) {
    on<ChangePasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChangePasswordInitialEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(
        oldPasswordController: TextEditingController(),
        newPasswordController: TextEditingController(),
        newPasswordAgainController: TextEditingController()));
  }
}
