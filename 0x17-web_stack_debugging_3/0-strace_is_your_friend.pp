# 0-strace_is_your_friend.pp

# Install strace package (if not already installed)
package { 'strace':
  ensure => installed,
}

# Run strace on the Apache process
exec { 'strace_apache':
  command => 'strace -o /tmp/strace_output.txt -p $(pgrep apache2)',
  path    => '/usr/bin',
  user    => 'root',
  require => Package['strace'],
}

# Fix the issue (replace 'your_fix_command' with the actual command to fix the problem)
exec { 'fix-wordpress':
  command     => 'your_fix_command',
  path        => '/usr/bin',
  user        => 'root',
  refreshonly => true,
  subscribe   => Exec['strace_apache'],
}

# Restart Apache after fixing the issue
service { 'apache2':
  ensure     => running,
  enable     => true,
  subscribe  => Exec['fix-wordpress'],
}

