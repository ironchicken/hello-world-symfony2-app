class ubuntu::update {

    exec { 'ubuntu::update::apt-get-update':
        path => '/usr/bin',
        command => 'apt-get update -y'
    }

}

class ubuntu::upgrade {

    exec { 'ubuntu::upgrade::apt-get-upgrade':
        path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
        #path => [ "/usr/local/sbin", "/usr/local/bin", "/usr/sbin", "/usr/bin", "/sbin", "/bin" ],
        command => 'apt-get upgrade -y',
        #command => 'apt-get dist-upgrade -yfq',
        environment => ["DEBIAN_FRONTEND=noninteractive"],
        require => [Class[ubuntu::update]]
    }

}

class ubuntu::clean {

    exec { 'ubuntu::clean::apt-get-clean':
        path => '/usr/bin',
        command => 'apt-get clean',
        require => [Class[ubuntu::upgrade]]
    }

}

class ubuntu {
    include ubuntu::update
    include ubuntu::upgrade
    include ubuntu::clean
}

# Manually:
#    sudo apt-get update -y
#    DEBIAN_FRONTEND=noninteractive sudo apt-get upgrade -y
#
#    sudo apt-get clean
#    593729
#    du -s /var/cache/apt
#http://www.tecmint.com/useful-basic-commands-of-apt-get-and-apt-cache-for-package-management/

# Czyszczenie dysku
# sudo apt-get install localepurge
# sudo apt-get install bleachbit
# sudo apt-get autoremove --purge apt-xapian-index
# sudo apt-get autoremove --purge python-xapian
# python-xapian

#
#
#    HOW TO CHECK ENV VAR?
#    exec { 'abc':
#        command => '/bin/echo $ABC > /vagrant/abc.txt',
#        environment => ["ABC=def"],
#        require => [Exec[apt-get-update]]
#    }

#http://askubuntu.com/questions/146921/how-do-i-apt-get-y-dist-upgrade-without-a-grub-config-prompt
#log: less /var/log/apt/history.log


