class phpunit {

    exec { 'phpunit-get':
        path => '/bin:/usr/bin',
        command => 'curl https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit 2>/dev/null',
        onlyif  => 'test ! -f /usr/local/bin/phpunit',
        require => [Package['curl']]
    }

    exec { 'phpunit-chmod':
        command => "chmod +x /usr/local/bin/phpunit",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        require => Exec['phpunit-get']
    }

    package { 'php5-xdebug':
        ensure => installed,
        require => Package['php5']
    }

    package { 'php5-xsl':
        ensure => installed,
        require => Package['php5']
    }

    package { 'php5-curl':
        ensure => installed,
        require => Package['php5']
    }

}
