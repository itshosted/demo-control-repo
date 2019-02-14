#
class demo_role::demo::client {

  case $facts['os']['family'] {
    'RedHat': {
      include demo_profile::base
      include demo_profile::demo::client
    }
    default: {
      fail("OS ${facts['operatingsystem']}${facts['operatingsystemrelease']} is not supported!")
    }
  }
}
