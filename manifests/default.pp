exec {
  "apt-get update":
    path => "/usr/bin",
}

#Global parameter
Package { ensure => 'present', require => Exec["apt-get update"] }

#package list variable 
$enhancers = [ 'mongodb-org', 'mongodb-org-server', 'mongodb-org-shell', 'mongodb-org-mongos', 'mongodb-org-tools' ]

package { $enhancers: }

