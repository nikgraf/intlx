/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_ko;

  import 'package:intlx/src/internal.dart';
  import 'package:intlx/src/relative_time/symbols.dart';
  import 'package:intlx/src/relative_time/locale/ko.dart' as relative_time_symbols_ko;
    import '../plural/ko.dart' as plural_locale_ko;

  void init() {
    RelativeTimeSymbols.map['ko'] = relative_time_symbols_ko.symbols;
      plural_locale_ko.init();
  }
  