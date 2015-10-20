# Class: mqttwarn
# ===========================
#
# Full description of class mqttwarn here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class mqttwarn (
  $repourl = $::mqttwarn::params::repourl,
  $install_path = $::mqttwarn::params::install_path,
  $config_path = $::mqttwarn::params::config_path,
  $manage_service = $::mqttwarn::params::manage_service,
  $service_name = $::mqttwarn::params::service_name,
  $cfg = $::mqttwarn::params::cfg,
) inherits ::mqttwarn::params {

  # validate parameters here

  class { '::mqttwarn::install': } ->
  class { '::mqttwarn::config': } ~>
  class { '::mqttwarn::service': } ->
  Class['::mqttwarn']
}
