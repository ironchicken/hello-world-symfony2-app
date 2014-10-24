class composer {

    exec { 'composer-get':
        command => "curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        onlyif  => 'test ! -f /usr/local/bin/composer',
        require => Package['php5']
    }

    exec { 'composer-move':
        command => "mv /usr/local/bin/composer.phar /usr/local/bin/composer",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        onlyif  => 'test ! -f /usr/local/bin/composer',
        require => Exec['composer-get'],
    }

}
