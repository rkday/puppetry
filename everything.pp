Package {ensure => "latest"}
package { "emacs24":} 
package { "less":} 
package { "sudo":} 
package { "s3cmd":} 

package { "openbox":}
package { "gtk-smooth-themes":}
package { "gtk-theme-switch":}

package { "xterm":} 
package { "lightdm":} 
package { "terminator":} 
package { "wicd":} 
package { "lxde":} 


package { "iceweasel":} 
package { "libreoffice":} 
package { "kmymoney":} 
package { "vlc":} 

package { "build-essential":} 
package { "python3":} 
package { "git":}
package { "openjdk-7-jdk":}

exec { "/usr/bin/wget -O /usr/local/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein":
     creates => "/usr/local/bin/lein"
}
->
file { "/usr/local/bin/lein":
     mode => "0755"
}

exec { "/usr/bin/puppet module install puppetlabs/vcsrepo":
     creates => "/etc/puppet/modules/vcsrepo"}