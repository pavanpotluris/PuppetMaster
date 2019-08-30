class localusers::users(){
  define localuser ($ensure='present'){
    user {$name:
       ensure => $ensure,
       home => "/home/${name}"
    }
    if $ensure == 'present' {
       file { "/home/${name}":
         ensure => 'directory',
         owner => "$name",
    }
    } else {
        file { "/home/${name}":
          ensure => 'absent',
          force => 'true',
        }
   }
  }
