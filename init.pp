class http (
  $package_name      = $::http::params::package_name,
  $service_name      = $::http::params::service_name,
  $service_ensure    = $::http::params::service_ensure,
  $ensure            = $::http::params::ensure,
  $service_enable    = $::http::params::service_enable,
) inherits ::http::params {
  class { '::http::install': } ->
  class { '::http::service': }


class http::install(
  $package_name = $::http::package_name,
  $ensure       = $::http::ensure,
) {
  package { 'http-package':
    ensure => $ensure,
    name   => $package_name,
  }
}

class http::service(
 $service_name   = $::http::service_name,
 $service_ensure = $::http::service_ensure,
 $service_enable = $::http::service_enable,
) {
  service { 'http-service':
    ensure     => $service_ensure,
    name       => $service_name,
    enable     => $service_enable,
    hasstatus  => true,
    hasrestart => true,
  }
}
