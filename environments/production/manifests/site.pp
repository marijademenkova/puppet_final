## site.pp ##

node 'host-agent1.minsk.epam.com' {
  include role::zabbix::server
}

node 'host-agent2.minsk.epam.com' {
  include role::zabbix::agent
}