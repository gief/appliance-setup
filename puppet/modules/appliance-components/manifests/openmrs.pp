class appliance-components::openmrs {
  file { '/etc/apache2/conf.d/openmrs-proxy.conf':
    ensure => present,
    source => 'puppet:///modules/appliance-components/openmrs-proxy.conf',
    require => [
      Package['httpd'],
    ],
    notify  => Service['httpd'],
  }

  #include ::openmrs
}
