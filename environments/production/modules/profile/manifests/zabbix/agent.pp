class profile::zabbix::agent inherits profile::zabbix{
  package { 'zabbix-agent':
    ensure  => 'installed',
    require => Yumrepo['zabbix_repository'],
  }

  file_line { 'Zabbix Server Ip':
    path    => '/etc/zabbix/zabbix_agentd.conf',
    match   => '^Server=.*',
    line    => 'Server=192.168.56.71',
    require => Package['zabbix-agent'],
  }

  -> file_line { 'Zabbix Server Ip Active Checks':
    path  => '/etc/zabbix/zabbix_agentd.conf',
    match => '^ServerActive=.*',
    line  => 'ServerActive=192.168.56.71',
  }

}