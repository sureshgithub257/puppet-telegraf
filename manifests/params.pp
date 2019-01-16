class telegraf::params {

  $config_source = $facts['lcp'] ? {
    'qa' => 'puppet:///modules/telegraf/telegraf_qa.conf',
    'pr' => 'puppet:///modules/telegraf/telegraf_pr.conf',
  }
#  $server = $facts['lcp'] ? {
#    'qa' => 'metrics.ioq1.example.com:2003',
#    'pr' => 'metrics.io.example.com:2003',
# }
  $server = hiera(telegraf::server)
  $service_name = 'telegraf'
  $service_enable = true
  $service_hasstatus = true
  $service_hasrestart = true
  $service_ensure = 'running'

}
