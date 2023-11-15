# logging in holberton without error

# increase holberton hard file limit
exec { 'increase-hard-file-limit':
  command => "sed -i '/^holberton hard/s/4/90000/' /etc/security/limits.conf",
  path    => 'user/local/bin/:/bin/',
}

# increase soft file limit
exec { 'increase-soft file limit':
  command => "sed -i '/^holberton soft/s/5/90000/' /etc/security/limits.conf",
  path    => 'user/local/bin/:/bin/',
}