# MYSQL variables

variable "mysql_db_name" {
  description = "The name of the MySQL database to create"
  type        = string
  default     = "dummydb"
}

variable "mysql_user" {
  description = "The MySQL user to create"
  type        = string
  default     = "demouser"
}

variable "mysql_root_password" {
  description = "The root password for MySQL"
  type        = string
  sensitive   = true
}

variable "mysql_password" {
  description = "The password for the MySQL user"
  type        = string
  sensitive   = true
}

variable "mysql_host" {
  description = "The hostname for the MySQL database"
  type        = string
  default     = "mysql_db"
}

variable "mysql_port" {
  description = "The port for the MySQL database"
  type        = number
  default     = 3306
}

variable "mysql_image" {
  description = "The image to use for MySQL container"
  type        = string
  default     = "mysql:9"
}
