class hosts {
  
  resources { 'host':
    purge => true,
  }

  host { 'localhost.localdomain':
    ensure       => 'present',
    host_aliases => ['localhost'],
    ip           => '127.0.0.1',
  }

  host { 'master.corp.puppetlabs.net':
    ensure       => 'present',
    host_aliases => ['master'],
    ip           => '10.20.1.13',
  }

  host { 'centos65b.corp.puppetlabs.net':
    ensure       => 'present',
    host_aliases => ['centos65b'],
    ip           => '10.20.1.16',
  }
}
