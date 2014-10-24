class behat {

    exec { 'behat-get':
        command => "wget -O /usr/local/bin/behat https://github.com/downloads/Behat/Behat/behat.phar",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        onlyif  => 'test ! -f /usr/local/bin/behat'
    }

    exec { 'behat-chmod':
        command => "chmod a+x /usr/local/bin/behat",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        require => Exec['behat-get']
    }

}
