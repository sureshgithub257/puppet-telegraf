#
class telegraf(
  String $service_name = $telegraf::params::service_name,
  Boolean $service_enable = $telegraf::params::service_enable,
  Boolean $service_hasstatus = $telegraf::params::service_hasstatus,
  Boolean $service_hasrestart = $telegraf::params::service_hasrestart,
  String $service_ensure = $telegraf::params::service_ensure,
  String $config_source = $telegraf::params::config_source,
  String $server = $telegraf::params::server,
) inherits ::telegraf::params {
  class { '::telegraf::install': }
  -> class { '::telegraf::config': }
  ~> class { '::telegraf::service': }
}
