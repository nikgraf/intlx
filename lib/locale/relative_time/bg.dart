/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_bg;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/bg.dart' as relative_time_symbols_bg;
    import '../plural/bg.dart' as plural_locale_bg;

  void init() {
    RelativeTimeSymbols.map['bg'] = relative_time_symbols_bg.symbols;
      plural_locale_bg.init();
  }
  