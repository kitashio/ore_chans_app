// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:ore_chans_app/widget_cookbook/ui/bottom_navigation/novigaton_notifier.dart';
// import 'package:ore_chans_app/widget_cookbook/ui/bottom_navigation/pages/add.dart';
// import 'package:ore_chans_app/widget_cookbook/ui/bottom_navigation/pages/people.dart';
// import 'package:ore_chans_app/widget_cookbook/ui/bottom_navigation/pages/profile.dart';
// import 'package:ore_chans_app/widget_cookbook/ui/bottom_navigation/pages/search.dart';
//
// class BottomNavigationPage extends ConsumerWidget {
//   const BottomNavigationPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final navItem = ref.watch(navigationProviderProvider);
//
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter"),
//           backgroundColor: Colors.amberAccent,
//         ),
//         bottomNavigationBar: CurvedNavigationBar(
//           items: const [
//             Icon(Icons.people, size: 30),
//             Icon(Icons.person, size: 30),
//             Icon(Icons.add, size: 30),
//             Icon(Icons.search_outlined, size: 30),
//           ],
//           index: NavItem.values.indexOf(navItem),
//           onTap: (selectedIndex) {
//             ref
//                 .read(navigationProviderProvider.notifier)
//                 .switchTo(NavItem.values[selectedIndex]);
//           },
//           height: 70,
//           backgroundColor: Colors.amberAccent,
//           animationDuration: const Duration(milliseconds: 300),
//         ),
//         body: GetBody(navItem: navItem));
//   }
// }
//
// class GetBody extends StatelessWidget {
//   const GetBody({Key? key, required this.navItem}) : super(key: key);
//
//   final NavItem navItem;
//
//   @override
//   Widget build(BuildContext context) {
//     // switchで切り替える
//     switch (navItem) {
//       case NavItem.people:
//         return const People();
//       case NavItem.profile:
//         return const Profile();
//       case NavItem.add:
//         return const Add();
//       case NavItem.search:
//         return const Search();
//       default:
//         return const People();
//     }
//   }
// }