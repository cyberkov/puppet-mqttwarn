# == Class mqttwarn::install
#
# This class is called from mqttwarn for install.
#
class mqttwarn::install {

  package { $::mqttwarn::package_name:
    ensure => present,
  }
}
