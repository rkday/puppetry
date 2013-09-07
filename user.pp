exec { "/usr/bin/gtk-theme-switch2 /usr/share/themes/Clearlooks":}

file { "/home/${id}/git-repos":
     ensure => "directory"
}