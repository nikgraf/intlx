/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_pt_PT;

  import 'package:intlx/src/relative_time/relative_time_symbols.dart';
  import 'package:intlx/src/relative_time/locale/pt_PT.dart' as relative_time_symbols_pt_PT;
    import '../plural/pt.dart' as plural_locale_pt;

  void init() {
    RelativeTimeSymbols.map['pt_PT'] = relative_time_symbols_pt_PT.symbols;
      plural_locale_pt.init();
  }
  