/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_or;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/or.dart' as relative_time_symbols_or;
    import '../plural/or.dart' as plural_locale_or;

  void init() {
    RelativeTimeSymbols.map['or'] = relative_time_symbols_or.symbols;
      plural_locale_or.init();
  }
  