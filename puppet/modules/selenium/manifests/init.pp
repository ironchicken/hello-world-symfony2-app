class selenium {

    exec { 'selenium-get':
        command => "wget -O /usr/local/bin/selenium-server-standalone-2.41.0.jar http://selenium-release.storage.googleapis.com/2.41/selenium-server-standalone-2.41.0.jar",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        onlyif  => 'test ! -f /usr/local/bin/selenium-server-standalone-2.41.0.jar'
    }

#    exec { 'php-cs-fixer-chmod':
#        command => "chmod a+x /usr/local/bin/php-cs-fixer",
#        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
#        require => Exec['php-cs-fixer-get']
#    }

    package { "openjdk-7-jre-headless":
        ensure => present
    }

    package { "firefox":
        ensure => present
    }

    package { "xvfb":
        ensure => present
    }

}
