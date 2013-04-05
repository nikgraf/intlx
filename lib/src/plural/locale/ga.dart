/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library plural_symbols_ga;

import 'package:intlx/src/plural/plural.dart';

final symbols = new PluralLocaleImpl('ga', (int n) {
if(n == 1) return PluralCategory.ONE;
else if(n == 2) return PluralCategory.TWO;
else if((range(4, 3).contains(n))) return PluralCategory.FEW;
else if((range(4, 7).contains(n))) return PluralCategory.MANY;
else return PluralCategory.OTHER;
  });