/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_cs;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/cs.dart' as relative_time_symbols_cs;
    import '../plural/cs.dart' as plural_locale_cs;

  void init() {
    RelativeTimeSymbols.map['cs'] = relative_time_symbols_cs.symbols;
      plural_locale_cs.init();
  }
  