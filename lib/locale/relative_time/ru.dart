/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_ru;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/ru.dart' as relative_time_symbols_ru;
    import '../plural/ru.dart' as plural_locale_ru;

  void init() {
    RelativeTimeSymbols.map['ru'] = relative_time_symbols_ru.symbols;
      plural_locale_ru.init();
  }
  