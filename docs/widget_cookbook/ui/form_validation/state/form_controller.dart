import 'package:flutter/material.dart';
import 'package:ore_chans_app/widget_cookbook/ui/form_validation/model/form_logic.dart';
import 'package:ore_chans_app/widget_cookbook/ui/form_validation/model/form_state.dart';
import 'package:riverpod/riverpod.dart';

final formVieModelProvider =
    NotifierProvider<FormViewModelNotifier, FormStatus>(
        FormViewModelNotifier.new);

// FormStatusのenumを型に指定する
class FormViewModelNotifier extends Notifier<FormStatus> {
  @override
  build() {
    // 初期値を設定
    return FormStatus.initial;
  }

  // FormLogicクラスのインスタンスを生成。関数を呼び出すために必要
  final FormLogic _formLogic = FormLogic();
  // formKeyは、Formの状態を管理するためのキー
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // この関数はボタンが押された気に、入力フォームのバリデーションを行う
  void validateForm() {
    if (formKey.currentState?.validate() == true) {
      state = FormStatus.valid;
    } else {
      state = FormStatus.invalid;
    }
  }

  // このゲッターは、FormValidationクラスのTextFormFieldのvalidatorに渡す
  String? phoneNumberValidator(String? value) =>
      _formLogic.phoneNumberValidator(value);
  String? passwordValidator(String? value) =>
      _formLogic.passwordValidator(value);
}

// ------------------------------------------------------------

/// [StateNotifierを使った場合]
// 入力フォームの状態用のenum
// enum FormStatus {
//   initial,
//   valid,
//   invalid,
// }

// 入力フォームの状態を管理するStateNotifier
// class FormViewModel extends StateNotifier<FormStatus> {
//   FormViewModel(this._formLogic) : super(FormStatus.initial);

//   final FormLogic _formLogic;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   void validateForm() {
//     if (formKey.currentState?.validate() == true) {
//       state = FormStatus.valid;
//     } else {
//       state = FormStatus.invalid;
//     }
//   }

//   String? phoneNumberValidator(String? value) => _formLogic.phoneNumberValidator(value);
//   String? passwordValidator(String? value) => _formLogic.passwordValidator(value);
// }

// final formControllerProvider = StateNotifierProvider<FormViewModel, FormStatus>(
//     (ref) => FormViewModel(FormLogic()));
