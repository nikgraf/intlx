/// DO NOT EDIT. This file is autogenerated by script.
/// See "<this package>/tool/plural/locale_build.dart"

library plural_symbols_ro;

import 'package:intlx/src/plural/plural.dart';

final symbols = new PluralLocaleImpl('ro', (int n) {
if(n == 1) return PluralCategory.ONE;
else if(n == 0 || n != 1 && (range(19, 1).contains(n % 100))) return PluralCategory.FEW;
else return PluralCategory.OTHER;
  });
