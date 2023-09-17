import 'package:flutter/material.dart';
import 'package:ore_chans_app/widget_cookbook/extension/extension.dart';
import 'package:ore_chans_app/widget_cookbook/ui/aspect_ratio/aspect_ratio_example.dart';
import 'package:ore_chans_app/widget_cookbook/ui/form_validation/view/form_validation.dart';
import 'package:ore_chans_app/widget_cookbook/ui/stepper/stepper_example.dart';
import 'package:ore_chans_app/widget_cookbook/ui/widget/custom_elevated_button.dart';
import 'package:ore_chans_app/widget_cookbook/ui/fractionally_sized_box/fractionally_sized_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/photo/universe.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// [コンポーネント化したボタンで画面遷移する]
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                backgroundColor: Colors.black54,
                foregroundColor: Colors.white,
                width: 150,
                height: 50,
                onPressed: () {
                  context.to(const FormValidation());
                },
                title: 'Form Validation',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                backgroundColor: Colors.black54,
                foregroundColor: Colors.white,
                width: 150,
                height: 50,
                onPressed: () {
                  context.to(const StepperExample());
                },
                title: 'Stepper',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
