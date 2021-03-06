// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library intlx.tool.cldr.relative_time.code_build;

import 'dart:io';
import 'dart:json' as json;
import '../library_writer.dart';
import 'package:intlx/src/plural/plural_locale_list.dart';
import 'package:intl/intl.dart';
import 'package:intlx/intlx.dart';
import 'package:intlx/src/codegen.dart';
import 'package:intlx/src/package_paths.dart';

main() => new RelativeTimeLibraryWriter().writeLibraries();

class RelativeTimeLibraryWriter extends LibraryWriter {
  final type = "relative_time";
  final symbolsClass = "RelativeTimeSymbols";
  String getPluralLibraryIdentifier(String locale) => "plural_locale_$locale";

  getSymbolsConstructorArgs(String locale, Map data) {
    String unitsCode(String unitType) {
      var units = data[unitType];
      var mapContents = '';
      if(!units.isEmpty) {
        mapContents = TimeUnit.values.map((TimeUnit unit) {
          var unitString = unit.toString();
          return '"$unitString": ${json.stringify(units[unitString])}';
        }).join(''',
      ''');
      }
      return '''
  $unitType: {
      $mapContents
    }''';
    }

    var unitCategories = ["units", "shortUnits", "pastUnits", "futureUnits"];
    var ret = unitCategories.map(unitsCode).join(''',
    ''');
    return '''
    $ret''';
  }

  final pluralLocaleDataId = 'plural_locale_data';
  String get publicClassMarkdown => '[DurationFormat] and/or [AgeFormat]';
  List getSymbolsImports() {
    var plurlLocaleDataUri = 'package:${package.name}/$pluralLocaleDataId.dart';
    return [new Import(plurlLocaleDataUri, as: pluralLocaleDataId)]
    ..addAll(super.getSymbolsImports());
  }
  
  String getLocaleDataConstructorArgs(String locale) => 
    super.getLocaleDataConstructorArgs(locale) + 
    ", $pluralLocaleDataId.${Intl.verifiedLocale(locale, pluralLocales.contains).toUpperCase()}";

  String getSymbolsMapSetterLogic() => '''$pluralLocaleDataId.ALL.load();
${super.getSymbolsMapSetterLogic()}''';
}
