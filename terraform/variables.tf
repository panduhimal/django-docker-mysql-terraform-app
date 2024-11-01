# MYSQL variables

variable "mysql_db_name" {
  description = "The name of the MySQL database to create"
  type        = string
  default     = "mysql_db"
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

# Django app image and container variables

variable "django_image_name" {
  description = "The name of the Django app image"
  type        = string
  default     = "django_app_image"
}

variable "django_app_name" {
  description = "The name of the Django app container"
  type        = string
  default     = "webapp"
}

variable "django_app_port" {
  description = "The port for the Django container"
  type        = number
  default     = 8000
}
