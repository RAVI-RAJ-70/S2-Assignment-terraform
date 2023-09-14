# count loop

variable "purpose" {
  type        = list(string)
  description     = "give instance purpose"
}
variable "owner" {
  type        = list(string)
  description     = "give instance owner"
}
variable "name" {
  type        = list(string)
  description     = "give instance name"
}

variable "environment" {
  type        = list(string)
  description     = "give instance enviroment"
}

# for each loop

variable "set" {

  type        = set(string)

  description = "give instance name"

}