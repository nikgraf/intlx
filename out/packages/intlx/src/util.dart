
library intlx.util;

// this library contains things which don't really belong in this package,
// but don't currently exist in any common libraries

// TODO: replace with resolution of http://dartbug.com/9590 
Map mapValues(Map map, valueMapper(value)) => map.keys.fold({}, (result, key) {
  result[key] = valueMapper(map[key]);
  return result;
});

// TODO: create common typedef library ?
typedef R Unary<T, R>(T);
typedef void Action();

// TODO: create common callback library ?
noop(x) => x;

// TODO: replace this with the resolution of http://dartbug.com/1236
ifNull(v, d) => v == null ? d : v;

// works for Strings, Iterables, and Maps
ifEmpty(v, d) => v.isEmpty ? d : v;

// is there a bug for this ?
// TODO: named parameters instead ?
Iterable<int> range(int length, [int start = 0, int step = 1]) => 
  new Iterable.generate(length, (int index) => start + index * step);

String withCapitalization(String s, bool capitalized) {
  var firstLetter = s[0];
  firstLetter = capitalized ? 
    firstLetter.toUpperCase() : 
    firstLetter.toLowerCase();
  return firstLetter + s.substring(1);
}

String underscoresToCamelCase(String underscores, bool capitalized) { 
  var camel = underscores.splitMapJoin(
    "_", 
    onMatch: (_) => "", 
    onNonMatch: (String segment) => withCapitalization(segment, true));
  return withCapitalization(camel, capitalized);
}