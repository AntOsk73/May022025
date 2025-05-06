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
  type=premium
  default="Standard"
}

variable "account_replication_type"{
  type=ZRS
  default="LRS"
}
