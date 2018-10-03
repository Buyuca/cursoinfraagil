class base {

   case $::osfamily {
     "RedHat": {
	$pacotes = ["epel-release", "git", "nano", "sysstat", "htop", "httpd", "figlet"]
      }

     "Debian": {

	exec { "atualiza_pacotes":
		command => "/usr/bin/apt update"
	}

	$pacotes = ["git", "nano", "sysstat", "htop", "cowsay", "figlet"]
     }
   }

  package { $pacotes:
	ensure => present
  }

}
