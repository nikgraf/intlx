/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library relative_time_locale_es;

  import 'package:intlx/src/relative_time/relative_time_symbols.dart';
  import 'package:intlx/src/relative_time/locale/es.dart' as relative_time_symbols_es;
    import '../plural/es.dart' as plural_locale_es;

  void init() {
    RelativeTimeSymbols.map['es'] = relative_time_symbols_es.symbols;
      plural_locale_es.init();
  }
  