file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  content => "I love Puppet\n",
}
