filebucket { 'main':
  path   => false,                # This is required for remote filebuckets.
  server => 'ip-172-31-38-203.us-east-compute.internal', # Optional; defaults to the configured puppet master.
}

File { backup => main }

node default{
notify {"Hi Hello, Welcome to Puppet World Production \n":}
}
node 'ip-172-31-22-37.-eas]]t-2.compute.internal' {

	notify {"Hi i am in node ${fqdn}":}
	#include tt
	include example
}
