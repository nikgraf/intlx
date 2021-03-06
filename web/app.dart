@observable
library intlx.age.example;

import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_browser.dart';
import 'package:intlx/intlx.dart';
import 'package:intlx/relative_time_locale_data.dart' as relative_time_data;
import 'package:intlx/iterable_locale_data.dart' as iterable_data;
import 'package:intlx/plural_locale_data.dart' as plural_data;
import 'package:intlx/src/relative_time/relative_time_locale_list.dart';
import 'package:intlx/src/deprecated_locale_map.dart';
import 'package:intlx/src/util.dart';

var _selectedLocale = 'en';
String get selectedLocale => _selectedLocale;
void set selectedLocale (String v) {
  Intl.systemLocale = _selectedLocale = v;
}
// locale data (use relative time for no particular reason since they're all the same)
var locales = relativeTimeLocales;

// iterable
BidiFormatter bidiFormatter = new BidiFormatter.UNKNOWN(true);

var iterableData = iterable_data.ALL; 
IterableFormat get iterableFormat => new IterableFormat(
  locale: selectedLocale, 
  onSeparator: (sep) => '<span class="muted">$sep</span>');
var counts = range(4);
SafeHtml formatCount(int count) => new SafeHtml.unsafe(bidiFormatter.wrapWithSpan(iterableFormat.format(range(count, 1).map((i) => '<b class="text-info">$i</b>')), isHtml: true));
String toStringCount(int count) => range(count, 1).toList().toString();

// plural
var pluralData = plural_data.ALL;
get pluralFormat => new PluralFormat(pluralCases, locale: 'en_US', pattern: "{0}");
var pluralCases = {
  "0": "no books", 
  "one": "{0} book", 
  "other": "{0} books"};
String get formattedPlural => pluralFormat.format(plural);
var plural = 0;

// relative time
var relativeTimeData = relative_time_data.ALL;
// duration
var durationFormatLength = "1";
DurationFormat get durationFormat => new DurationFormat(locale: selectedLocale, length: FormatLength.values[int.parse(durationFormatLength, onError: (_) => 0)]);
var timeUnit = "1";
var timeUnitCount = "60";
String get duration => durationFormat.format(new RoundDuration(TimeUnit.values[int.parse(timeUnit, onError: (_) => 0)], int.parse(timeUnitCount, onError: (_) => 0)).toDuration());
// age
get defaultAgeFormat => new AgeFormat(locale: selectedLocale);
get secondsAgeFormat => new AgeFormat(locale: selectedLocale, rounder: new DurationRounder.staticUnit(TimeUnit.SECOND));
var dateTime = new DateTime.now();
String _selectedTime = "3";
String get selectedTime => _selectedTime;
void set selectedTime (String v) {
  _selectedTime = v;
  var i = int.parse(v);
  var cases = [soy, som, sod, () => new DateTime.now(), eod, eom, eoy];
  dateTime = cases[i]();
}
DateTime sod() => _withNow((now) => new DateTime(now.year, now.month, now.day));
DateTime som() => _withNow((now) => new DateTime(now.year, now.month));
DateTime soy() => _withNow((now) => new DateTime(now.year));
DateTime eod() => _withNow((now) => new DateTime(now.year, now.month, now.day + 1));
DateTime eom() => _withNow((now) => new DateTime(now.year, now.month + 1));
DateTime eoy() => _withNow((now) => new DateTime(now.year + 1));
DateTime _withNow(transform) => transform(new DateTime.now());

pillClass(String locale) => locale == selectedLocale ? 'active' : '';

String mustachify(String content) => '{{$content}}';

void main() {
  relativeTimeData.load();
  iterableData.load();
  pluralData.load();
  findSystemLocale().then((locale) {
    var foundLocale = Intl.verifiedLocale(locale, locales.contains, onFailure: (_) => null);
    if(foundLocale != null) {
      Intl.systemLocale = selectedLocale = foundLocale;
    }
  });
}

var _constrainedLocales = () {
  var r = locales
  .where((locale) => !deprecatedLocaleMap.containsKey(locale))
  .map((String locale) => Intl.verifiedLocale(locale, _localeNames.containsKey, onFailure: (_) => null))
  .where((locale) => locale != null)
  .toList();
  r.sort((a, b) => _localeNames[a].compareTo(_localeNames[b]));
  return r;
}();

var localeNames = _constrainedLocales.fold({}, (filtered, locale) {
  if(!filtered.containsKey(locale)) {
    filtered[locale] = _localeNames[locale];
  }
  return filtered;
});

var _localeNames = <String, String> {
  "gv": "Manx", 
  "gu": "Gujarati", 
  "scn": "Sicilian", 
  "rom": "Romany", 
  "alg": "Algonquian Language", 
  "ale": "Aleut", 
  "sco": "Scots", 
  "rof": "Rombo", 
  "mni": "Manipuri", 
  "gd": "Scottish Gaelic", 
  "ga": "Irish", 
  "mno": "Manobo Language", 
  "osa": "Osage", 
  "gn": "Guarani", 
  "alt": "Southern Altai", 
  "gl": "Galician", 
  "mwr": "Marwari", 
  "ty": "Tahitian", 
  "tw": "Twi", 
  "tt": "Tatar", 
  "tr": "Turkish", 
  "ts": "Tsonga", 
  "tn": "Tswana", 
  "to": "Tongan", 
  "aus": "Australian Language", 
  "tk": "Turkmen", 
  "th": "Thai", 
  "roa": "Romance Language", 
  "tg": "Tajik", 
  "te": "Telugu", 
  "tkl": "Tokelau", 
  "mwl": "Mirandese", 
  "kcg": "Tyap", 
  "smi": "Sami Language", 
  "cay": "Cayuga", 
  "fat": "Fanti", 
  "fan": "Fang", 
  "got": "Gothic", 
  "din": "Dinka", 
  "bla": "Siksika", 
  "cmc": "Chamic Language", 
  "ml": "Malayalam", 
  "guz": "Gusii", 
  "kln": "Kalenjin", 
  "trv": "Taroko", 
  "zh": "Chinese", 
  "tem": "Timne", 
  "teo": "Teso", 
  "nwc": "Classical Newari", 
  "za": "Zhuang", 
  "cau": "Caucasian Language", 
  "zu": "Zulu", 
  "ter": "Tereno", 
  "tet": "Tetum", 
  "mnc": "Manchu", 
  "az-alt-short": "Azeri", 
  "kut": "Kutenai", 
  "suk": "Sukuma", 
  "xog": "Soga", 
  "kum": "Kumyk", 
  "sus": "Susu", 
  "new": "Newari", 
  "sux": "Sumerian", 
  "den": "Slave", 
  "men": "Mende", 
  "mer": "Meru", 
  "lez": "Lezghian", 
  "root": "Root", 
  "eka": "Ekajuk", 
  "akk": "Akkadian", 
  "dra": "Dravidian Language", 
  "jrb": "Judeo-Arabic", 
  "brx": "Bodo", 
  "sgn": "Sign Language", 
  "sga": "Old Irish", 
  "apa": "Apache Language", 
  "bra": "Braj", 
  "chb": "Chibcha", 
  "chg": "Chagatai", 
  "chk": "Chuukese", 
  "chm": "Mari", 
  "chn": "Chinook Jargon", 
  "cho": "Choctaw", 
  "chp": "Chipewyan", 
  "chr": "Cherokee", 
  "twq": "Tasawaq", 
  "chy": "Cheyenne", 
  "ti": "Tigrinya", 
  "jmc": "Machame", 
  "ii": "Sichuan Yi", 
  "mg": "Malagasy", 
  "iba": "Iban", 
  "mo": "Moldavian", 
  "mn": "Mongolian", 
  "mi": "Maori", 
  "mh": "Marshallese", 
  "mk": "Macedonian", 
  "mt": "Maltese", 
  "cai": "Central American Indian Language", 
  "del": "Delaware", 
  "ms": "Malay", 
  "mr": "Marathi", 
  "ta": "Tamil", 
  "my": "Burmese", 
  "cad": "Caddo", 
  "oc": "Occitan", 
  "hit": "Hittite", 
  "tai": "Tai Language", 
  "afh": "Afrihili", 
  "sit": "Sino-Tibetan Language", 
  "ie": "Interlingue", 
  "afa": "Afro-Asiatic Language", 
  "csb": "Kashubian", 
  "nyn": "Nyankole", 
  "nyo": "Nyoro", 
  "dyu": "Dyula", 
  "sio": "Siouan Language", 
  "lam": "Lamba", 
  "fr": "French", 
  "mgh": "Makhuwa-Meetto", 
  "lah": "Lahnda", 
  "lad": "Ladino", 
  "fy": "Western Frisian", 
  "lag": "Langi", 
  "snk": "Soninke", 
  "fa": "Persian", 
  "ug-alt-variant": "Uyghur", 
  "mad": "Madurese", 
  "ff": "Fulah", 
  "mai": "Maithili", 
  "fi": "Finnish", 
  "mak": "Makasar", 
  "fo": "Faroese", 
  "egy": "Ancient Egyptian", 
  "znd": "Zande", 
  "ss": "Swati", 
  "sr": "Serbian", 
  "sq": "Albanian", 
  "sw": "Swahili", 
  "sv": "Swedish", 
  "su": "Sundanese", 
  "st": "Southern Sotho", 
  "sk": "Slovak", 
  "si": "Sinhala", 
  "sh": "Serbo-Croatian", 
  "so": "Somali", 
  "sn": "Shona", 
  "sm": "Samoan", 
  "sl": "Slovenian", 
  "sc": "Sardinian", 
  "sa": "Sanskrit", 
  "sg": "Sango", 
  "se": "Northern Sami", 
  "sd": "Sindhi", 
  "zen": "Zenaga", 
  "kbd": "Kabardian", 
  "enm": "Middle English", 
  "en_AU": "Australian English", 
  "lg": "Ganda", 
  "lb": "Luxembourgish", 
  "fiu": "Finno-Ugrian Language", 
  "ln": "Lingala", 
  "hil": "Hiligaynon", 
  "li": "Limburgish", 
  "byn": "Blin", 
  "lt": "Lithuanian", 
  "lu": "Luba-Katanga", 
  "dje": "Zarma", 
  "fil": "Filipino", 
  "yi": "Yiddish", 
  "non": "Old Norse", 
  "ceb": "Cebuano", 
  "yo": "Yoruba", 
  "nym": "Nyamwezi", 
  "bat": "Baltic Language", 
  "dak": "Dakota", 
  "dav": "Taita", 
  "dar": "Dargwa", 
  "day": "Dayak", 
  "kpe": "Kpelle", 
  "el": "Greek", 
  "eo": "Esperanto", 
  "en": "English", 
  "map": "Austronesian Language", 
  "ee": "Ewe", 
  "mdf": "Moksha", 
  "mas": "Masai", 
  "mdr": "Mandar", 
  "et": "Estonian", 
  "es": "Spanish", 
  "ru": "Russian", 
  "gon": "Gondi", 
  "goh": "Old High German", 
  "sms": "Skolt Sami", 
  "smn": "Inari Sami", 
  "smj": "Lule Sami", 
  "de_AT": "Austrian German", 
  "rm": "Romansh", 
  "rn": "Rundi", 
  "ro": "Romanian", 
  "dsb": "Lower Sorbian", 
  "sma": "Southern Sami", 
  "gor": "Gorontalo", 
  "sbp": "Sangu", 
  "ast": "Asturian", 
  "asa": "Asu", 
  "vai": "Vai", 
  "bal": "Baluchi", 
  "ath": "Athapascan Language", 
  "yue": "Cantonese", 
  "xh": "Xhosa", 
  "mag": "Magahi", 
  "kfo": "Koro", 
  "fj": "Fijian", 
  "zap": "Zapotec", 
  "kok": "Konkani", 
  "eu": "Basque", 
  "zxx": "No linguistic content", 
  "kos": "Kosraean", 
  "man": "Mandingo", 
  "tog": "Nyasa Tonga", 
  "hup": "Hupa", 
  "udm": "Udmurt", 
  "bej": "Beja", 
  "bem": "Bemba", 
  "bez": "Bena", 
  "ber": "Berber", 
  "nzi": "Nzima", 
  "sai": "South American Indian Language", 
  "ang": "Old English", 
  "pra": "Prakrit Language", 
  "bho": "Bhojpuri", 
  "sal": "Salishan Language", 
  "pro": "Old Provençal", 
  "raj": "Rajasthani", 
  "sad": "Sandawe", 
  "anp": "Angika", 
  "es_419": "Latin American Spanish", 
  "rap": "Rapanui", 
  "sas": "Sasak", 
  "lui": "Luiseno", 
  "saq": "Samburu", 
  "nqo": "N’Ko", 
  "car": "Carib", 
  "min": "Minangkabau", 
  "mic": "Micmac", 
  "nah": "Nahuatl", 
  "efi": "Efik", 
  "btk": "Batak", 
  "ypk": "Yupik Language", 
  "mis": "Miscellaneous Language", 
  "kac": "Kachin", 
  "kab": "Kabyle", 
  "kaa": "Kara-Kalpak", 
  "kaj": "Jju", 
  "kam": "Kamba", 
  "kar": "Karen", 
  "kaw": "Kawi", 
  "fr_CH": "Swiss French", 
  "tyv": "Tuvinian", 
  "fr_CA": "Canadian French", 
  "ka": "Georgian", 
  "doi": "Dogri", 
  "kg": "Kongo", 
  "ckb": "Sorani Kurdish", 
  "kk": "Kazakh", 
  "kj": "Kuanyama", 
  "ki": "Kikuyu", 
  "ko": "Korean", 
  "kn": "Kannada", 
  "km": "Khmer", 
  "kl": "Kalaallisut", 
  "ks": "Kashmiri", 
  "kr": "Kanuri", 
  "kw": "Cornish", 
  "kv": "Komi", 
  "ku": "Kurdish", 
  "ky": "Kirghiz", 
  "uga": "Ugaritic", 
  "ha": "Hausa", 
  "ksf": "Bafia", 
  "ksb": "Shambala", 
  "ksh": "Colognian", 
  "mga": "Middle Irish", 
  "ssy": "Saho", 
  "gez": "Geez", 
  "de": "German", 
  "da": "Danish", 
  "dyo": "Jola-Fonyi", 
  "dz": "Dzongkha", 
  "ira": "Iranian Language", 
  "dv": "Divehi", 
  "ssa": "Nilo-Saharan Language", 
  "him": "Himachali", 
  "gem": "Germanic Language", 
  "crp": "Creole or Pidgin", 
  "qu": "Quechua", 
  "bas": "Basaa", 
  "gba": "Gbaya", 
  "bad": "Banda", 
  "ban": "Balinese", 
  "shi": "Tachelhit", 
  "crh": "Crimean Turkish", 
  "shn": "Shan", 
  "bai": "Bamileke Language", 
  "arp": "Arapaho", 
  "ses": "Koyraboro Senni", 
  "arw": "Arawak", 
  "nus": "Nuer", 
  "ebu": "Embu", 
  "see": "Seneca", 
  "arc": "Aramaic", 
  "en_US": "U.S. English", 
  "sem": "Semitic Language", 
  "sel": "Selkup", 
  "nub": "Nubian Language", 
  "arn": "Araucanian", 
  "seh": "Sena", 
  "lus": "Lushai", 
  "mus": "Creek", 
  "luy": "Luyia", 
  "lua": "Luba-Lulua", 
  "mua": "Mundang", 
  "iro": "Iroquoian Language", 
  "mul": "Multiple Languages", 
  "mun": "Munda Language", 
  "lun": "Lunda", 
  "luo": "Luo", 
  "wa": "Walloon", 
  "wo": "Wolof", 
  "jv": "Javanese", 
  "zbl": "Blissymbols", 
  "tut": "Altaic Language", 
  "kea": "Kabuverdianu", 
  "tum": "Tumbuka", 
  "ja": "Japanese", 
  "cop": "Coptic", 
  "vun": "Vunjo", 
  "ilo": "Iloko", 
  "tsi": "Tsimshian", 
  "gwi": "Gwichʼin", 
  "und": "Unknown Language", 
  "lo": "Lao", 
  "tli": "Tlingit", 
  "tlh": "Klingon", 
  "ch": "Chamorro", 
  "co": "Corsican", 
  "ca": "Catalan", 
  "ce": "Chechen", 
  "pon": "Pohnpeian", 
  "cy": "Welsh", 
  "sah": "Sakha", 
  "cs": "Czech", 
  "cr": "Cree", 
  "ady": "Adyghe", 
  "cv": "Chuvash", 
  "cu": "Church Slavic", 
  "lv": "Latvian", 
  "dum": "Middle Dutch", 
  "pt": "Portuguese", 
  "dua": "Duala", 
  "swc": "Congo Swahili", 
  "swb": "Comorian", 
  "fro": "Old French", 
  "yap": "Yapese", 
  "frm": "Middle French", 
  "frs": "Eastern Frisian", 
  "frr": "Northern Frisian", 
  "yao": "Yao", 
  "pa": "Punjabi", 
  "xal": "Kalmyk", 
  "es_ES": "Iberian Spanish", 
  "pi": "Pali", 
  "en_GB": "British English", 
  "gay": "Gayo", 
  "oto": "Otomian Language", 
  "ota": "Ottoman Turkish", 
  "hmn": "Hmong", 
  "nl_BE": "Flemish", 
  "gaa": "Ga", 
  "fur": "Friulian", 
  "ain": "Ainu", 
  "rar": "Rarotongan", 
  "sla": "Slavic Language", 
  "ve": "Venda", 
  "vi": "Vietnamese", 
  "is": "Icelandic", 
  "av": "Avaric", 
  "iu": "Inuktitut", 
  "it": "Italian", 
  "vo": "Volapük", 
  "vot": "Votic", 
  "ik": "Inupiaq", 
  "io": "Ido", 
  "kha": "Khasi", 
  "ia": "Interlingua", 
  "jpr": "Judeo-Persian", 
  "tzm": "Central Morocco Tamazight", 
  "id": "Indonesian", 
  "ig": "Igbo", 
  "pap": "Papiamento", 
  "ewo": "Ewondo", 
  "pau": "Palauan", 
  "paa": "Papuan Language", 
  "pag": "Pangasinan", 
  "sat": "Santali", 
  "pal": "Pahlavi", 
  "pam": "Pampanga", 
  "syc": "Classical Syriac", 
  "phi": "Philippine Language", 
  "cel": "Celtic Language", 
  "phn": "Phoenician", 
  "nic": "Niger-Kordofanian Language", 
  "nia": "Nias", 
  "dgr": "Dogrib", 
  "syr": "Syriac", 
  "tup": "Tupi Language", 
  "niu": "Niuean", 
  "gsw": "Swiss German", 
  "cch": "Atsam", 
  "jbo": "Lojban", 
  "nb": "Norwegian Bokmål", 
  "mfe": "Morisyen", 
  "ps-alt-variant": "Pushto", 
  "sam": "Samaritan Aramaic", 
  "hai": "Haida", 
  "nog": "Nogai", 
  "gmh": "Middle High German", 
  "cus": "Cushitic Language", 
  "wen": "Sorbian Language", 
  "bnt": "Bantu", 
  "elx": "Elamite", 
  "ada": "Adangme", 
  "pt_PT": "Iberian Portuguese", 
  "haw": "Hawaiian", 
  "bin": "Bini", 
  "bik": "Bikol", 
  "pt_BR": "Brazilian Portuguese", 
  "mos": "Mossi", 
  "moh": "Mohawk", 
  "rwk": "Rwa", 
  "tl": "Tagalog", 
  "kde": "Makonde", 
  "zh_Hans": "Simplified Chinese", 
  "zh_Hant": "Traditional Chinese", 
  "tvl": "Tuvalu", 
  "ijo": "Ijo", 
  "kmb": "Kimbundu", 
  "peo": "Old Persian", 
  "umb": "Umbundu", 
  "tmh": "Tamashek", 
  "fon": "Fon", 
  "hsb": "Upper Sorbian", 
  "en_CA": "Canadian English", 
  "bg": "Bulgarian", 
  "myv": "Erzya", 
  "ba": "Bashkir", 
  "ps": "Pashto", 
  "bm": "Bambara", 
  "bn": "Bengali", 
  "bo": "Tibetan", 
  "bh": "Bihari", 
  "bi": "Bislama", 
  "cgg": "Chiga", 
  "nmg": "Kwasio", 
  "br": "Breton", 
  "bs": "Bosnian", 
  "rup": "Aromanian", 
  "zza": "Zaza", 
  "om": "Oromo", 
  "oj": "Ojibwa", 
  "ace": "Achinese", 
  "ach": "Acoli", 
  "srn": "Sranan Tongo", 
  "kru": "Kurukh", 
  "srr": "Serer", 
  "kro": "Kru", 
  "krl": "Karelian", 
  "krc": "Karachay-Balkar", 
  "nds": "Low German", 
  "os": "Ossetic", 
  "or": "Oriya", 
  "yav": "Yangben", 
  "sog": "Sogdien", 
  "nso": "Northern Sotho", 
  "son": "Songhai", 
  "de_CH": "Swiss High German", 
  "art": "Artificial Language", 
  "wal": "Walamo", 
  "wak": "Wakashan Language", 
  "wae": "Walser", 
  "lol": "Mongo", 
  "mkh": "Mon-Khmer Language", 
  "awa": "Awadhi", 
  "loz": "Lozi", 
  "gil": "Gilbertese", 
  "was": "Washo", 
  "war": "Waray", 
  "hz": "Herero", 
  "hy": "Armenian", 
  "sid": "Sidamo", 
  "hr": "Croatian", 
  "ht": "Haitian", 
  "hu": "Hungarian", 
  "hi": "Hindi", 
  "ho": "Hiri Motu", 
  "be": "Belarusian", 
  "bua": "Buriat", 
  "bug": "Buginese", 
  "he": "Hebrew", 
  "uz": "Uzbek", 
  "la": "Latin", 
  "ur": "Urdu", 
  "pl": "Polish", 
  "uk": "Ukrainian", 
  "ug": "Uighur", 
  "aa": "Afar", 
  "ab": "Abkhazian", 
  "ae": "Avestan", 
  "af": "Afrikaans", 
  "khq": "Koyra Chiini", 
  "ak": "Akan", 
  "am": "Amharic", 
  "an": "Aragonese", 
  "khi": "Khoisan Language", 
  "as": "Assamese", 
  "ar": "Arabic", 
  "inh": "Ingush", 
  "tpi": "Tok Pisin", 
  "myn": "Mayan Language", 
  "ay": "Aymara", 
  "ine": "Indo-European Language", 
  "az": "Azerbaijani", 
  "inc": "Indic Language", 
  "nl": "Dutch", 
  "nn": "Norwegian Nynorsk", 
  "no": "Norwegian", 
  "na": "Nauru", 
  "tiv": "Tiv", 
  "nai": "North American Indian Language", 
  "nd": "North Ndebele", 
  "ne": "Nepali", 
  "ng": "Ndonga", 
  "ny": "Nyanja", 
  "nap": "Neapolitan", 
  "naq": "Nama", 
  "grb": "Grebo", 
  "grc": "Ancient Greek", 
  "nr": "South Ndebele", 
  "tig": "Tigre", 
  "nv": "Navajo", 
  "zun": "Zuni", 
  "rw": "Kinyarwanda", 
  "cpe": "English-based Creole or Pidgin", 
  "cpf": "French-based Creole or Pidgin", 
  "kho": "Khotanese", 
  "cpp": "Portuguese-based Creole or Pidgin", 
  "agq": "Aghem"
};

