/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_vi;

  import 'package:intlx/src/relative_time/relative_time_symbols.dart';
  import 'package:intlx/src/relative_time/locale/vi.dart' as relative_time_symbols_vi;
    import '../plural/vi.dart' as plural_locale_vi;

  void init() {
    RelativeTimeSymbols.map['vi'] = relative_time_symbols_vi.symbols;
      plural_locale_vi.init();
  }
  