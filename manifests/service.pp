class telegraf::service(
  String $service_name       = $telegraf::service_name,
  Boolean $service_enable     = $telegraf::service_enable,
  Boolean $service_hasstatus  = $telegraf::service_hasstatus,
  Boolean $service_hasrestart = $telegraf::service_hasrestart,
  String $service_ensure     = $telegraf::service_ensure,
) {
  service { 'telegraf':
    ensure     => $service_ensure,
    enable     => $service_enable,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
    name       => $service_name,
  }
}
