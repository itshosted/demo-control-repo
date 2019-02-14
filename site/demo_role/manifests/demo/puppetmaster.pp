#
class demo_role::demo::puppetmaster {

  case $facts['os']['family'] {
    'RedHat': {
      include demo_profile::base
      include demo_profile::puppet::master
    }
    default: {
      fail("OS ${facts['operatingsystem']}${facts['operatingsystemrelease']} is not supported!")
    }
  }
}
