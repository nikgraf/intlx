/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library plural_symbols_ar;

import 'package:intlx/src/plural/plural.dart';

final symbols = new PluralLocaleImpl('ar', (int n) {
if(n == 0) return PluralCategory.ZERO;
else if(n == 1) return PluralCategory.ONE;
else if(n == 2) return PluralCategory.TWO;
else if((range(8, 3).contains(n % 100))) return PluralCategory.FEW;
else if((range(89, 11).contains(n % 100))) return PluralCategory.MANY;
else return PluralCategory.OTHER;
  });