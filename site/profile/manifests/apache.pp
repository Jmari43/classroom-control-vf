class profile::apache {

  class { 'apache': }
  include apache::mod::php
  
  apache::vhost { 'safewaybloggo.com' :
    docroot => '/var/www/html',
  }
}
