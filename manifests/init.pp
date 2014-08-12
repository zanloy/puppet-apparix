# === Authors
#
# Zan Loy <zan.loy@gmail.com>
#
# === Copyright
#
# Copyright 2014 Zan Loy
#
class apparix {

    File {
        owner => 'root',
        group => 'root',
        mode => '0444',
        backup => false,
    }

    file {
        '/usr/bin/apparix':
            ensure => file,
            source => "puppet:///modules/${module_name}/usr/bin/apparix",
            mode => '0755';
        '/etc/bashrc.d/apparix':
            ensure => file,
            source => "puppet:///modules/${module_name}/etc/bashrc.d/apparix";
        '/usr/share/doc/apparix':
            ensure => directory,
            source => "puppet:///modules/${module_name}/usr/share/doc/apparix",
            recurse => true,
            force => true,
            purge => true;
        '/usr/share/man/man1/apparix.1':
            ensure => file,
            source => "puppet:///modules/${module_name}/usr/share/man/man1/apparix.1";
    }

}
