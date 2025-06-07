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

variable "test_reverse" {
  default = "You are welcome Antoine!"
}

variable "inputText_Toexctract" {
  default = "Bloc Focus / Formation."
}

variable "inputStart_index" {
  default = 13
}

variable "input_length" {
  default = 9
}

variable "input_vowels" {
  default = "I love Terraform!"
}

variable "inputText_toReplace" {
  default = "What's the difference between integers and numbers?"
}

variable "getWord_fromText" {
  default = "Bagels in Montreal are boiled, not baked"
}

variable "word_index" {
  default = 4
}

variable "remove_fromList" {
 default = "Hello Antoine! Welcome to Terraform."
}

variable "punctuation_list" {
 default =  [".", ",", "!", "?", ";", ":"]
}

variable "odd_pick" {
  default = "Montreal's food scene is elite!"
}

variable "input_backwards" {
  default = "Late-night diners are a blessing."
}

variable "capital_1stletter" {
 default = "every foodie should visit once."
}


