# == Class mqttwarn::service
#
# This class is meant to be called from mqttwarn.
# It ensure the service is running.
#
class mqttwarn::service {

  service { $::mqttwarn::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
