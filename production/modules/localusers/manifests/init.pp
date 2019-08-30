class localusers($listusers=[],$ensure='present') {
  localusers::users::localuser{$listusers:
    ensure => $ensure,
  }
}
