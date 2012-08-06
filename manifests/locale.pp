/*

==Definition: locales::locale
Install or remove locale $name

Arguments:
*$ensure*: ensure that local is present or absent
*$charset*: locale charset
*$locale*: namevar - locale name

*/
define locales::locale($ensure=present, $charset) {
  concat::fragment {"locale-${name}":
    ensure  => $ensure,
    target  => "/etc/locale.gen",
    content => "${name} ${charset}\n",
  }
}
