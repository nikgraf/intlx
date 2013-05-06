// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// DO NOT EDIT. This file is autogenerated by script, see
/// "<this package>/tool/plural/code_build.dart"/// 
/// Before checkin, this file could have been manually edited. This is
/// to incorporate changes before we could correct CLDR. All manual
/// modification must be documented in this section, and should be
/// removed after those changes land to CLDR.

library plural_symbols_br;

  import 'package:intlx/src/util.dart';
  import 'package:intlx/src/plural/plural.dart';

final symbols = new PluralLocaleImpl('br', (int n) {
if(n % 10 == 1 && !(n % 100 == 11 || n % 100 == 71 || n % 100 == 91)) return PluralCategory.ONE;
  else if(n % 10 == 2 && !(n % 100 == 12 || n % 100 == 72 || n % 100 == 92)) return PluralCategory.TWO;
  else if((range(2, 3).contains(n % 10) || n % 10 == 9) && !(range(10, 10).contains(n % 100) || range(10, 70).contains(n % 100) || range(10, 90).contains(n % 100))) return PluralCategory.FEW;
  else if(n % 1000000 == 0 && n != 0) return PluralCategory.MANY;
  else return PluralCategory.OTHER;
});
