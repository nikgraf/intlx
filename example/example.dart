
import 'package:intlx/intlx.dart';
import '../lib/locale/relative_time/all.dart' as all;
import 'package:intl/intl_standalone.dart';

main() {

  go(String locale) {

    print("system locale: $locale");

    // system locale is not work in Windows yet
    locale = "en";

    all.init();

    final apocolypse = new DateTime(2012, 12, 21);

    var durationFormat = new DurationFormat(locale: locale, length: FormatLength.SHORT);
    print(durationFormat.format(const Duration(days: 50, hours: 3)));
    print(durationFormat.format(const Duration(days: 27, minutes: 2)));

    var ageFormat = new TimelineFormat(locale: locale);
    print("The apocolypse is: ${ageFormat.format(apocolypse)}");
    print("A couple hours ago is: ${ageFormat.format(new DateTime.now().subtract(const Duration(hours: 2, minutes: 5)))}");

    var pluralFormat = new PluralFormat({"0": "no books", "one": "{0} book", "other": "{0} books"}, locale: "en", pattern: "{0}");
    print(pluralFormat.format(0)); // "no books"
    print(pluralFormat.format(1)); // "1 book"
    print(pluralFormat.format(5)); // "5 books"
  };

  findSystemLocale().then(go);
}