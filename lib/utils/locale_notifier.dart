import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/i18n/strings.g.dart';

// Notifierを使用する場合
class LocaleNotifier extends Notifier<AppLocale> {
  @override
  build() {
    return LocaleSettings.currentLocale;
  }

  void changeLocale(AppLocale newLocale) {
    state = newLocale;
    LocaleSettings.setLocale(newLocale);
  }
}

final localeProvider = NotifierProvider<LocaleNotifier, AppLocale>(LocaleNotifier.new);