// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library intlx.tool.cldr.plural.data_build;

import '../cldr_data_proxy.dart';
import 'package:http/http.dart' as http;
import 'dart:json' as json;
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:intlx/src/deprecated_locale_map.dart';

main() => new PluralDataProxy().proxy();

class PluralDataProxy extends CldrDataProxy {
  
  PluralDataProxy() : super(null, "plural");

  Future fetch() {
    var pluralRulesUri = '${cldrBaseUri}supplemental/plurals/plurals?depth=-1';
    return http.read(pluralRulesUri).then((String jsonText) {
      var data = json.parse(jsonText);
      // add deprecated (renamed) locales, 
      // which are not present in CLDR plural data
      deprecatedLocaleMap.forEach((k, v) {
        if(data.containsKey(v)) data[k] = data[v];
      });
      
      availableCldrLocales = data.keys;
      
      return constrainLocales().fold({}, (map, locale) {
        map[locale] = data[locale];
        return map;
      });
    });
  }
  
  transformJson(String locale, var jsonObject) {
    toUpperCaseKeys(Map map) {
      var uc = {};
      map.forEach((k, v) {
        uc[k.toUpperCase()] = v;
      });
      return uc;
    }
    return jsonObject == '' ? 
      // CLDR uses '' to represent the absence of any plural rules
      // for the locale, so normalize appropriately
      const <String, String> {} : 
      // store plural categories in upper case form 
      // to match the output of PluralCategory.toString()
      toUpperCaseKeys(jsonObject);
  }

}
