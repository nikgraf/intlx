/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_bn;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/bn.dart' as relative_time_symbols_bn;
    import '../plural/bn.dart' as plural_locale_bn;

  void init() {
    RelativeTimeSymbols.map['bn'] = relative_time_symbols_bn.symbols;
      plural_locale_bn.init();
  }
  