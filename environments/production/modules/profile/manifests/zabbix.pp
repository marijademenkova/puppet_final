class profile::zabbix{
  yumrepo { 'zabbix_repository':
    enabled  => true,
    gpgkey   => 'https://repo.zabbix.com/RPM-GPG-KEY-ZABBIX-A14FE591',
    baseurl  => 'http://repo.zabbix.com/zabbix/3.4/rhel/7/x86_64/',
    gpgcheck => 1,
  }
  notify {"${::is_puppetmaster}":}
}