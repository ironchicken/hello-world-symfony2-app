class phpdoc {

    exec { 'phpdocumentor-get':
        command => "wget -O /usr/local/bin/phpdoc phpdoc.org/phpDocumentor.phar",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        require => Package['graphviz']
    }

    exec { 'phpdocumentor-chmod':
        command => "chmod a+x /usr/local/bin/phpdoc",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        require => Exec['phpdocumentor-get']
    }

    # sudo apt-get install graphviz
    package { 'graphviz':
        ensure => installed
    }

}
