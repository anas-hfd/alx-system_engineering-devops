# increasing the amount of requests (traffic) handled by nginx (soft and hard limits).

# increasing ULIMIT of default file
exec { 'fix--for-nginx':
  #ULIMIT value
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
  #specifying the path
  path    => 'user/local/bin/:/bin/',
}

# Restart service nginx
exec { 'nginx-restart':
  command => '/etc/init.d/nginx restart',
  path    => '/etc/init.d/',
}
