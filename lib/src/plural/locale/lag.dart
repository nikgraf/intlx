/// DO NOT EDIT. This file is autogenerated by script.
/// See "<this package>/tool/plural/locale_build.dart"

library plural_symbols_lag;

import 'package:intlx/src/plural/plural.dart';

final symbols = new PluralLocaleImpl('lag', (int n) {
if(n == 0) return PluralCategory.ZERO;
else if(((n >= 0 && n <= 2)) && n != 0 && n != 2) return PluralCategory.ONE;
else return PluralCategory.OTHER;
  });
