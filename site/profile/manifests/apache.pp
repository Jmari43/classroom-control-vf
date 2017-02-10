class profile::apache {

  class { 'apache': }
  include apache::mod::php
  
  apache::vhost { $facts['fqdn']:
        port     => '80',
        priority => '00',
        docroot  => '/var/www/html',
    }
}
