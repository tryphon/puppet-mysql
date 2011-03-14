define mysql::database($ensure = 'present') {
  if $mysql_exists == "true" {
    mysql_database { $name:
      ensure => $ensure,
      require => File["/root/.my.cnf"],
    }
  }
}
