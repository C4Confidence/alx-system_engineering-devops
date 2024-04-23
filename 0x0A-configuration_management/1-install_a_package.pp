#script to install flask using pip3

package { ['python-pip']:
  ensure  => installed,
}

package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
  require  => Package['python-pip']
}

package { 'Flask':
  ensure   =>  '2.1.0',
  provider =>  'pip3',
  require  => Package['python-pip']
}
