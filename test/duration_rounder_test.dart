// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library intlx.test.duration_rounder_test;

import 'package:unittest/unittest.dart';
import 'package:intlx/intlx.dart';
import 'package:intlx/relative_time_locale_data.dart' as relative_time_data;

main() {
  group('DurationRounder', () {

    DurationFormat durationFormat;
    AgeFormat ageFormat;
    var oneHundredDays;

    setUp(() {
      relative_time_data.EN.load();
      var dayRounder = const DurationRounder.staticUnit(TimeUnit.DAY);
      durationFormat = new DurationFormat(locale: "en", rounder: dayRounder);
      ageFormat = new AgeFormat(locale: "en", rounder: dayRounder);
      oneHundredDays = const Duration(hours: Duration.HOURS_PER_DAY * 100 + 1);
    });

    test("5 minutes = 0 days", () => expect(durationFormat.format(new Duration(minutes: 5)), "0 days"));
    test("100 days ago", () => expect(ageFormat.format(new DateTime.now().subtract(oneHundredDays)), "100 days ago"));
    test("In 100 days", () => expect(ageFormat.format(new DateTime.now().add(oneHundredDays)), "In 100 days"));
  });

}

