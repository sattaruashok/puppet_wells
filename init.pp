class http (
  $package_name      = $::http::params::package_name,
  $service_name      = $::http::params::service_name,
  $service_ensure    = $::http::params::service_ensure,
  $ensure            = $::http::params::ensure,
  $service_enable    = $::http::params::service_enable,
) inherits ::http::params {
  class { '::http::install': } ->
  class { '::http::service': }

