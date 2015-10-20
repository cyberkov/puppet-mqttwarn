# == Class mqttwarn::params
#
# This class is meant to be called from mqttwarn.
# It sets variables according to platform.
#
class mqttwarn::params {
  $install_path = '/opt/mqttwarn'
  $config_path = '/etc/mqttwarn'
  $repourl = 'https://github.com/jpmens/mqttwarn.git'
  $cfg = {
    'defaults' => {
      'hostname' => 'localhost',
      'port'     => 1883,
      'username' => 'None',
      'password' => 'None',
    },
  }
  case $::osfamily {
    'Debian': {
      $service_name = 'mqttwarn'
    }
    'RedHat', 'Amazon': {
      $service_name = 'mqttwarn'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
