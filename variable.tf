variable "subscription_id"{
  type=string
}

variable "client_secret"{
  type=string
}

variable "tenant_id"{
  type=string
}

variable "client_id"{
  type=string
}
  
variable "antoinestorageaccount"{
  type=string
  default="antoskstoragemay"
}

variable "account_tier"{
  type=string
  default="Premium"
}

variable "account_replication_type"{
  type=string
  default="ZRS"
}

variable "number"{
  type = list(string)
  default=["42", "77", "13", "98", "3", "64", "55", "27", "89", "6"]
}

variable "environment"{
  type=string
  default="prod"
}

variable "sentence" {
  type        = string
  default = "A sentence to convert to uppercase"
}

variable "word" {
  type        = string
  default = "I AM A STUDENT AT MCIT"
}

variable "full_text" {
type=string
  default = "I love the country called Canada, it is awesome"
}              

variable "folderlocation" {
type=string
default="mcityaml"
}

variable "numbers_as_listOfStrings"{
  type = list(string)
  default=["50", "70", "100", "150", "200"]
}

variable "test1_touppercase" {
  default = "i work for national bank"
}

variable "sub_stringtest" {
  default = "I am learning Terraform"
}
