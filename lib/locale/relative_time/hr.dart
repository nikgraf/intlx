/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_hr;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/hr.dart' as relative_time_symbols_hr;
    import '../plural/hr.dart' as plural_locale_hr;

  void init() {
    RelativeTimeSymbols.map['hr'] = relative_time_symbols_hr.symbols;
      plural_locale_hr.init();
  }
  