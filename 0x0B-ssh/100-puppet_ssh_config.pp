#!/usr/bin/env bash
# Client configuration file with puppet
# This file must be configured to use private key ~/.ssh/school and authenticate
# without using a password

file_line { 'Identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
file_line { 'disable password login':
    path    => '/etc/ssh/ssh_config',
    line    => '    PasswordAuthentication no',
}
