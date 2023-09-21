import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('山手線 Stepper')),
      body: Stepper(
        currentStep: _currentStep,
        onStepTapped: (int step) => setState(() => _currentStep = step),
        onStepContinue: () => setState(() => _currentStep = (_currentStep + 1) % 5),
        onStepCancel: () => setState(() => _currentStep = _currentStep > 0 ? _currentStep - 1 : 4),
        steps: [
          _createStep('渋谷'),
          _createStep('恵比寿'),
          _createStep('目黒'),
          _createStep('五反田'),
          _createStep('大崎'),
          // ... 山手線の他の駅も追加できます
        ],
      ),
    );
  }

  Step _createStep(String stationName) {
    return Step(
      title: Text(stationName),
      content: SizedBox(height: 40, child: Center(child: Text('$stationName駅の情報'))),
    );
  }
}