/// DO NOT EDIT. This file is autogenerated by script.
/// See "<this package>/tool/plural/locale_build.dart"

library plural_symbols_shi;

import 'package:intlx/src/plural/plural.dart';

final symbols = new PluralLocaleImpl('shi', (int n) {
if(((n >= 0 && n <= 1))) return PluralCategory.ONE;
else if((range(9, 2).contains(n))) return PluralCategory.FEW;
else return PluralCategory.OTHER;
  });
