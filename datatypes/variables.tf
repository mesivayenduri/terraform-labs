variable "ami" {
    type = string
    default = "ami-0b72821e2f351e396"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "iam_user" {
    type = number
}