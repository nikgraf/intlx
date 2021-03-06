// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// TODO: replace this library with whatever support is provided
// for this in the library referenced by http://dartbug.com/5627.
// this will not be added directly to Duration per http://dartbug.com/10416
library duration_converters;

// TODO: should these be more precise averages, or is that too unpredictable ?
const int DAYS_PER_YEAR = 365;
const int DAYS_PER_MONTH = 30;

int inYears(Duration duration) => duration.inDays ~/ DAYS_PER_YEAR;
int inMonths(Duration duration) => duration.inDays ~/ DAYS_PER_MONTH;
int inWeeks(Duration duration) => duration.inDays ~/ DateTime.DAYS_PER_WEEK;
