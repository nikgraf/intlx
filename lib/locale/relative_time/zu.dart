/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_zu;

  import 'package:intlx/src/relative_time/relative_time_symbols.dart';
  import 'package:intlx/src/relative_time/locale/zu.dart' as relative_time_symbols_zu;
    import '../plural/zu.dart' as plural_locale_zu;

  void init() {
    RelativeTimeSymbols.map['zu'] = relative_time_symbols_zu.symbols;
      plural_locale_zu.init();
  }
  