# == Class: benchbox
#
# Installs BenchBox tools
#
class benchbox {
  package { ['git']:
    ensure => present;
  }


  file { '/etc/mysql/my.cnf':
    source  => 'puppet:///modules/mysql/my.cnf',
    require => Package['mysql-server'],
    notify  => Service['mysql'];
  }

  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -proot status',
    command => "mysqladmin -uroot password root",
    path    => ['/bin', '/usr/bin'],
    require => Service['mysql'];
  }

  exec { 'load-dynamic-sql':
    command => 'mysql -u root -proot < /vagrant/sites/dynamic.sql',
    path    => ['/bin', '/usr/bin'],
    require => Exec['set-mysql-password'];
  }
}