/*

==Definition: locales::alias
Create locale alias

Arguments:
*$ensure*: ensures alias is present or absent
*$locale*: locale name
*$alias*: namevar - alias name

*/
define locales::alias($ensure=present, $locale) {
  concat::fragment{"alias ${name} for ${locale}":
    ensure  => $ensure,
    target  => "/etc/locale.alias",
    content => "${name} ${locale}\n",
    require => Locales::Locale[$locale],
  }
}
