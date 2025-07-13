# aws_instance.sample:
resource "aws_instance" "sample" {
    ami                                  = "ami-0150ccaf51ab55a51"
    instance_type = "t2.micro"
    tags                                 = {
        "Name" = "sample"
    }
    vpc_security_group_ids               = [
        "sg-0ef1533bbed78ceee",
    ]

}
