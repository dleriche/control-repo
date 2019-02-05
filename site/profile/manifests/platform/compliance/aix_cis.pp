class profile::platform::compliance::aix_cis {

  ## AIX 3.1.6 /etc/security/user - minother pg24
  file_line { 'minother':
  ensure => present,
  path   => '/etc/security/user',
  line   => 'minother = 2',
  }
  ## AIX 3.2.1.2 system account lockdown - bin pg33
  user { 'bin':
    ensure => 'present',
    login  => 'false',
    rlogin => 'false',
  }
}
