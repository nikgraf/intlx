/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_is;

  import 'package:intlx/src/relative_time/relative_time_symbols.dart';
  import 'package:intlx/src/relative_time/locale/is.dart' as relative_time_symbols_is;
    import '../plural/is.dart' as plural_locale_is;

  void init() {
    RelativeTimeSymbols.map['is'] = relative_time_symbols_is.symbols;
      plural_locale_is.init();
  }
  