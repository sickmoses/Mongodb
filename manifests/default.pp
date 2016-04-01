exec {
  "apt-get update":
    path => "/usr/bin",
}

package {
  "mongodb-org":
    ensure => present,
    require => Exec["apt-get update"],
}
package {
  "mongodb-org-server":
    ensure => present,
    require => Exec["apt-get update"],
}
package {
  "mongodb-org-shell":
    ensure => present,
    require => Exec["apt-get update"],
}
package {
  "mongodb-org-mongos":
    ensure => present,
    require => Exec["apt-get update"],
}
package {
  "mongodb-org-tools":
    ensure => present,
    require => Exec["apt-get update"],
}

