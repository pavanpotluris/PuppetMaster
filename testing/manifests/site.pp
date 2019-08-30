filebucket { 'main':
  path   => false,                # This is required for remote filebuckets.
  server => 'ip-172-31-38-203.us-east-2.compute.internal', # Optional; defaults to the configured puppet master.
}

File { backup => main }

node default{
notify {"Hi Hello, Welcome to Puppet World \n":}
}
node 'ip-172-31-46-255.us-east-2.compute.internal' {
notify {"Hi i am in node ${fqdn} \n":}
#include example
class {'example':
	version => "1.0.0"
	}
}
