#create a file in /tmp

file { '/tmp/school':
ensure  => 'file',           #Ensure its a regular file
mode    => '0744',           #File permissions
owner   => 'www-data',       #File owner
group   => 'www-data',       #File group
content => 'I love Puppet',  #File content
}
