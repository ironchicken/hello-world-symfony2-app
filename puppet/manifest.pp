include php5

class { 'mysql::server': }

mysql::db { 'symfony':
  user     => 'symfony',
  password => 'symfony',
  ensure   => present,
  charset  => 'utf8',
  require  => Class['mysql::server']
}
