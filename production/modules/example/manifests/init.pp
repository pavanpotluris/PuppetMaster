class example {
	$port = '8090'
	
	notify {"This is local variable:::::: $port":}
	alert ("This is alert message $::ec2_public_hostname")
	
	#ensure - present, absent, file, directory, link
	
	file { 'a.txt':
		path => '/home/ubuntu/test/a.txt',
		ensure => file,
		content => template('/etc/puppet/environments/production/modules/example/files/server.xml'),
		owner => 'ubuntu',
		mode => '0644',
		backup => 'main'
	}

	file { 'A':
                path => "/home/ubuntu/test/A/c.txt",
                ensure => present,
                source => "puppet:///module_files/example/files/B/C/c.txt",
		recurse => true,
                owner => 'ubuntu',
		group => 'ubuntu',
		mode => '0644',
		backup => 'main'
        }

	file {
                'B':
                ensure => 'directory',
                source => 'puppet:///module_files/example/files/B',
                recurse => 'remote',
                path => '/home/ubuntu/test/A',
                owner => 'ubuntu',
                group => 'ubuntu',
                mode  => '0744', # Use 0700 if it is sensitive
        }

	exec { 'create_needed_directory':
                command => '/bin/mkdir -p /tmp/needed/directory',
                creates => '/tmp/needed/directory'
        }

	group { 'web':
              ensure => 'present',
              gid => '502',
        }

	user { 'pavan':
          ensure => 'present',
          gid => ['502','1000'],
          home => '/home/pavan',
	  comment => 'Pavan Potluri',
	  groups => ['web','ubuntu'],
          password => 'pavan',
          password_max_age => '99999',
          password_min_age => '0',
          shell => '/bin/bash',
          uid => '501',
        }

	class { vim:
	absent => false	
	}
}
