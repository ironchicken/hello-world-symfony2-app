class mysql::install {

    package { 'mysql-server':
        ensure => installed,
        require => Package['php5']
    }

    package { 'php5-mysql':
        ensure => installed,
        require => Package['php5']
    }

}

class mysql::configure {

    exec { 'create-db':
        unless => "/usr/bin/mysql -uvagrant -pvagrant",
        command => "/usr/bin/mysql -uroot -e \"create schema symfony default character set utf8 collate utf8_polish_ci;\"",
        require => Class['mysql::install']
    }

    exec { 'create-db-user':
        unless => "/usr/bin/mysql -uvagrant -pvagrant",
        command => "/usr/bin/mysql -uroot -e \"grant all on symfony.* to symfony@localhost identified by 'symfony';\"",
        require => Exec['create-db']
    }

}

class mysql::run {

    service { mysql:
        enable => true,
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        subscribe => Package['mysql-server'],
        require => Class['mysql::install', 'mysql::configure']
    }

}

class mysql {
    include mysql::install
    include mysql::configure
    include mysql::run
}
