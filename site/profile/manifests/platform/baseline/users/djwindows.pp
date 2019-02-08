class profile::platform::baseline::users::djwindows {

  # Add USER
  user { 'DLeRiche':
    ensure   => present,
    password => 'S3mp3rF!',
    groups   => ['DevOps'],
  }

  group { 'DevOps':
    ensure => present,
  }

  # ENABLE IE ESC - FOR ADMINS
  registry_value { 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}':
    type => dword,
    data => '00000001',
  }

# ENABLE IE ESC - FOR USERS
  registry_value { 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}':
    type => dword,
    data => '00000001',
  }

}
