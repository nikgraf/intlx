/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_am;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/am.dart' as relative_time_symbols_am;
    import '../plural/am.dart' as plural_locale_am;

  void init() {
    RelativeTimeSymbols.map['am'] = relative_time_symbols_am.symbols;
      plural_locale_am.init();
  }
  