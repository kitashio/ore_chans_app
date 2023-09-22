// import 'package:flutter/material.dart';
//
// import '../../../sample/widget_cookbook/ui/widget/custom_elevated_button.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Page"),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/photo/universe.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               /// [コンポーネント化したボタンで画面遷移する]
//               const SizedBox(
//                 height: 10,
//               ),
//               CustomElevatedButton(
//                 backgroundColor: Colors.black54,
//                 foregroundColor: Colors.white,
//                 width: 150,
//                 height: 50,
//                 onPressed: () {
//                   context.to(const FormValidation());
//                 },
//                 title: 'Form Validation',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               CustomElevatedButton(
//                 backgroundColor: Colors.black54,
//                 foregroundColor: Colors.white,
//                 width: 150,
//                 height: 50,
//                 onPressed: () {
//                   context.to(const StepperExample());
//                 },
//                 title: 'Stepper',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               CustomElevatedButton(
//                 backgroundColor: Colors.black54,
//                 foregroundColor: Colors.white,
//                 width: 150,
//                 height: 50,
//                 onPressed: () {
//                   context.to(const ProfilePage());
//                 },
//                 title: 'Profile Page',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               CustomElevatedButton(
//                 backgroundColor: Colors.black54,
//                 foregroundColor: Colors.white,
//                 width: 150,
//                 height: 50,
//                 onPressed: () {
//                   context.to(const PichartExample());
//                 },
//                 title: 'PichartExample',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               CustomElevatedButton(
//                 backgroundColor: Colors.black54,
//                 foregroundColor: Colors.white,
//                 width: 150,
//                 height: 50,
//                 onPressed: () {
//                   context.to(const MovingImage());
//                 },
//                 title: 'MovingImage',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
