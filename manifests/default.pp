exec {
  "apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927":
    path => "/usr/bin",
  "echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list":
    path => "/usr/bin",
  "apt-get update":
    path => "/usr/bin",
}

package {
  "mongodb-org":
    ensure => present,
    require => Exec["apt-get update"],
  "mongodb-org-server":
    ensure => present,
    require => Exec["apt-get update"],
  "mongodb-org-shell":
    ensure => present,
    require => Exec["apt-get update"],
  "mongodb-org-mongos":
    ensure => present,
    require => Exec["apt-get update"],
  "mongodb-org-tools":
    ensure => present,
    require => Exec["apt-get update"],
}












package {"apache2":

ensure => present,

require => Exec["apt-get update"],

}

service { "apache2":

ensure => "running",

require => Package["apache2"],

}


