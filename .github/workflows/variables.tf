variable "env" {
  description = "environment type"
  type        = string
  default     = "Sarath"
}
variable "vpc-cdir" {
  description = "cdir block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}
variable "subnet-cdir" {
  description = "subnet cdir block"
  type        = string
  default     = "10.0.0.0/24"
}
