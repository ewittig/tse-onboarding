class rootuser {
  $rootpassword = hiera('rootpassword')
  case $::osfamily {
    'RedHat' : { $oshash = centoshash("${rootpassword}") }
    default : { fail("Unsupported OS: ${::operatingsystem}") }
  }
  user { 'root':
    ensure           => 'present',
    comment          => hiera('rootcomment'),
    password         => $oshash,
  }
}
