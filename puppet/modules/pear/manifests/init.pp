# phpcs
# sudo pear install PHP_CodeSniffer
#
# https://github.com/opensky/Symfony2-coding-standard
#
# pear config-show | grep php_dir
# cd /usr/share/php/PHP/CodeSniffer/Standards
# git clone git://github.com/opensky/Symfony2-coding-standard.git Symfony2
#
# git clone git://github.com/opensky/Symfony2-coding-standard.git /usr/share/php/PHP/CodeSniffer/Standards/Symfony2

class pear {

    package { 'php-pear':
        ensure => installed,
        require => Package['php5']
    }

    exec { 'phpcs-install':
        path => '/bin:/usr/bin',
        command => 'pear install PHP_CodeSniffer',
        require => [Package['php-pear']]
    }

#    exec { 'phpcs-symfony2-standard':
#        path => '/bin:/usr/bin',
#        command => 'git clone git://github.com/opensky/Symfony2-coding-standard.git /usr/share/php/PHP/CodeSniffer/Standards/Symfony2',
#        require => [Exec['phpcs-install']]
#    }

}
