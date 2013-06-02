// Auto-generated from age.html.
// DO NOT EDIT.

library intlx.components;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'dart:async';
import 'package:web_ui/web_ui.dart';
import 'package:web_ui/watcher.dart' as watcher;
import 'package:intlx/intlx.dart';



@observable
class AgeComponent extends WebComponent with Observable  {
  /** Autogenerated from the template. */

  /** CSS class constants. */
  static Map<String, String> _css = {};

  /** This field is deprecated, use getShadowRoot instead. */
  get _root => getShadowRoot("intlx-age");
  autogenerated.Template __t;

  void created_autogenerated() {
    var __root = createShadowRoot("intlx-age");
    __t = new autogenerated.Template(__root);
    if (__root is autogenerated.ShadowRoot) __root.applyAuthorStyles = true;
    var __binding35 = __t.contentBind(() => age, false);
    __root.nodes.addAll([new autogenerated.Text('\n      '),
        __binding35,
        new autogenerated.Text('\n    ')]);
    __t.create();
  }

  void inserted_autogenerated() {
    __t.insert();
  }

  void removed_autogenerated() {
    __t.remove();
    __t = null;
  }

  /** Original code from the component. */

  static final _defaultAgeFormat = new AgeFormat();
  
  AgeComponent() {
    if(_dummyCounter == 0) {
      new Stream.periodic(const Duration(seconds: 1), (_) => _dummyCounter++).listen((_){});
    }
  }
  static final __changes = new __observe.Observable();

  static dynamic __$_dummyCounter = 0;
  static dynamic get _dummyCounter {
    if (__observe.observeReads) {
      __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, '_dummyCounter');
    }
    return __$_dummyCounter;
  }
  static set _dummyCounter(dynamic value) {
    if (__observe.hasObservers(__changes)) {
      __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, '_dummyCounter',
          __$_dummyCounter, value);
    }
    __$_dummyCounter = value;
  }
  static dynamic __$_dummyCounterInit = (){
    }();
  static dynamic get _dummyCounterInit {
    if (__observe.observeReads) {
      __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, '_dummyCounterInit');
    }
    return __$_dummyCounterInit;
  }
  static set _dummyCounterInit(dynamic value) {
    if (__observe.hasObservers(__changes)) {
      __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, '_dummyCounterInit',
          __$_dummyCounterInit, value);
    }
    __$_dummyCounterInit = value;
  }
  DateTime __$value;
  DateTime get value {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'value');
    }
    return __$value;
  }
  set value(DateTime value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'value',
          __$value, value);
    }
    __$value = value;
  }
  AgeFormat __$format = _defaultAgeFormat;
  AgeFormat get format {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'format');
    }
    return __$format;
  }
  set format(AgeFormat value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'format',
          __$format, value);
    }
    __$format = value;
  }

  String get age {
    _dummyCounter;
    var v = format is DurationFormat ? new DateTime.now().difference(value) : value; 
    return format.format(v);
  }
}

//@ sourceMappingURL=components.dart.map