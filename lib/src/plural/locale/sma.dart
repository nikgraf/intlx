/// DO NOT EDIT. This file is autogenerated by script.
/// See "intlx/tool/"

library plural_symbols_sma;

import 'package:intlx/src/plural/plural.dart';

final symbols = new PluralLocaleImpl('sma', (int n) {
if(n == 1) return PluralCategory.ONE;
else if(n == 2) return PluralCategory.TWO;
else return PluralCategory.OTHER;
  });