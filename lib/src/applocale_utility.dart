import 'dart:ui';

/// The callback type delegator for `LocaleDelegate`
typedef Future<bool> LocaleChangeCallback(Locale locale);

/// Get the equivalent Locale from the unicode string value
/// (preferably all lowercase & with "_" (underscore) & not "-" (hyphen) separator).
/// e.g. en => English, en_us => English(USA) etc.
Locale getLocale(String unicodeLang) {
  if (null != unicodeLang) {
    var langParts = unicodeLang.split('_');
    return Locale.fromSubtags(
        languageCode: langParts[0],
        scriptCode: langParts.length == 3 ? langParts[1] : null,
        countryCode: langParts.length == 2
            ? langParts[1]
            : (langParts.length == 3 ? langParts[2] : null));
  }
  return null;
}
