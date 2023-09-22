#install flask from pip3

package { 'python3-pip':
ensure => 'installed', #Ensure that the package is installed
}
exec { 'install_flask':
command => '/usr/bin/pip3 install Flask==2.1.0',
path    => '/bin/',
}
