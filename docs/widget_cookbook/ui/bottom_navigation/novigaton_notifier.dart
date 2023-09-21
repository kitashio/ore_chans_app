// navigation_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum NavItem { people, profile, add, search }

/// [StateNotifier]を使った状態管理
// class NavigationNotifier extends StateNotifier<NavItem> {
//   NavigationNotifier() : super(NavItem.profile);

//   void switchTo(NavItem item) {
//     state = item;
//   }
// }

// final navigationProvider = StateNotifierProvider<NavigationNotifier, NavItem>(
//   (ref) => NavigationNotifier(),
// );

/// [Notifier]を使った状態管理
class NavigationNotifierNotifier extends Notifier<NavItem> {
  @override
   build() {
    return NavItem.people;
  }

  void switchTo(NavItem item) {
    state = item;
  }
}

final navigationProviderProvider = NotifierProvider<NavigationNotifierNotifier, NavItem>(NavigationNotifierNotifier.new);