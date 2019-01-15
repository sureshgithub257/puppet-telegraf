class telegraf::config(
  String $config_source = $telegraf::config_source,
) {

  file { '/etc/telegraf/telegraf.conf':
    ensure => file,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
    source => "${config_source}",
  }
}
