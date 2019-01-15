class telegraf::install {
  package { 'telegraf':
    ensure => present,
  }
}
