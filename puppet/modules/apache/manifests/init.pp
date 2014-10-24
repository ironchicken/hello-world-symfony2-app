class apache::install {

    package { 'apache2':
        ensure => installed
    }

    package { 'libapache2-mod-php5':
        ensure => installed
    }

    package { 'php5':
        ensure => installed
    }

    package { 'php5-mcrypt':
        ensure => installed
    }

    package { 'php5-mysql':
        ensure => installed
    }

}

class apache::configure {

#    exec { 'apache-set-rootdir':
#        path => '/usr/bin:/usr/sbin:/bin',
#        command => 'sed -i \'s#/var/www#/vagrant/web#g\' /etc/apache2/sites-available/default',
#        require => Class['apache::install']
#    }

#    exec { 'apache-allow-override':
#        path => '/usr/bin:/usr/sbin:/bin',
#        command => 'sed -i \'s#AllowOverride None#AllowOverride All#g\' /etc/apache2/sites-available/default',
#        require => Class['apache::install'],
#        notify  => Service['apache2']
#    }

    exec { 'apache-enable-modrewrite':
        path => '/usr/bin:/usr/sbin:/bin',
        command => 'sudo a2enmod rewrite',
        require => Class['apache::install'],
        notify  => Service['apache2']
    }

    exec { 'php-apache2module-set-timezone':
        path => '/usr/bin:/usr/sbin:/bin',
        command => 'sed -i \'s/^[; ]*date.timezone =.*/date.timezone = Europe\/London/g\' /etc/php5/apache2/php.ini',
        onlyif => 'test "`php -c /etc/php5/apache2/php.ini -r \"echo ini_get(\'date.timezone\');\"`" = ""',
        require => Class['php-cli::install']
    }

    exec { 'php-apache2module-disable-short-open-tag':
        path => '/usr/bin:/usr/sbin:/bin',
        command => 'sed -i \'s/^[; ]*short_open_tag =.*/short_open_tag = Off/g\' /etc/php5/apache2/php.ini',
        onlyif => 'test "`php -c /etc/php5/apache2/php.ini -r \"echo ini_get(\'short_open_tag\');\"`" = "1"',
        require => Class['php-cli::install']
    }

}

class apache::run {

    service { apache2:
        enable => true,
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        require => Class['apache::install', 'apache::configure'],
    }

}

class apache {
    include apache::install
    include apache::configure
    include apache::run
}
