#!/usr/bin/env bash
# make changes to config file usign puppet

file { '/etc/ssh/ssh_config':
  ensure => 'present',
}

file_line { 'Use IdentityFile ~/.ssh/school':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}

file_line { 'PasswordAuthentication no':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => 'PasswordAuthentication yes',
  replace => 'true',
}

