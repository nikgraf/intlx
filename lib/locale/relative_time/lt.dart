/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_lt;

  import 'package:intlx/src/relative_time/relative_time_symbols.dart';
  import 'package:intlx/src/relative_time/locale/lt.dart' as relative_time_symbols_lt;
    import '../plural/lt.dart' as plural_locale_lt;

  void init() {
    RelativeTimeSymbols.map['lt'] = relative_time_symbols_lt.symbols;
      plural_locale_lt.init();
  }
  