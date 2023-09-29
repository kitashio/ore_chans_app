import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../docs/widget_cookbook/ui/form_validation/state/form_controller.dart';

/// [入力フォームのバリデーション]
class FormValidation extends ConsumerWidget {
  const FormValidation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(formVieModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Form Validation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                validator: controller.phoneNumberValidator,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
              TextFormField(
                validator: controller.passwordValidator,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: controller.validateForm,
                child: const Text('送信'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
