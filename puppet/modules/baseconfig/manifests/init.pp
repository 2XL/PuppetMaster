# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {


  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  package { ['git']:
    ensure => present;
  }

  host {
    'hostmachine':
      ip => '192.168.0.1';
    'salve42':
      ip => '192.168.0.42';
    'salve41':
      ip => '192.168.0.41';

  }


  file {
    '/tmp/boostrap':
      owner  => 'vagrant',
      group  => 'vagrant',
      mode   => '0777',
      source => 'puppet:///modules/baseconfig/bootstrap.sh';
  }


  exec {
    'bootstrap':
      command => 'bootstrap',
      path => ['/tmp', '/vagrant'];
  }

}
