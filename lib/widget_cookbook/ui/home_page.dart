import 'package:flutter/material.dart';
import 'package:ore_chans_app/widget_cookbook/extension/extension.dart';
import 'package:ore_chans_app/widget_cookbook/ui/doc_aspect_ratio/aspect_ratio_example.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// [コンポーネント化したボタンで画面遷移する]
            CustomElevatedButton(backgroundColor: Colors.black54, foregroundColor: Colors.white, width: 150, height: 50, onPressed: () {
              context.to(const AspectRatioExample());
            }, title: 'Aspect Ratio',),
            const SizedBox(
              height: 10,
            ),
            CustomElevatedButton(backgroundColor: Colors.blueGrey, foregroundColor: Colors.white, width: 150, height: 50, onPressed: () {
              context.to(const FractionallySizedBoxExample());
            }, title: 'FractionallySizedBox',),
          ],
        ),
      ),
    );
  }
}
