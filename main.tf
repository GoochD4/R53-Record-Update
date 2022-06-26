locals {
  students = {
    "student1" = {
      name    = "student1"
      pip = ["<student lab pip"]
    }
    # "student2" = {
    #   name    = "student2"
    #   pip = "<PIP>"
    # }
    # "student3" = {
    #   name    = "student3"
    #   pip = "<PIP>"
    # }
    # "student4" = {
    #   name    = "student4"
    #   pip = "<PIP>"
    # }
    # "student5" = {
    #   name    = "student5"
    #   pip = "<PIP>"
    # }            
  }
}
resource "aws_route53_record" "www" {
  for_each   = local.students
  zone_id = var.zone_id
  name    = "${each.value.name}.fwebcloudtrain.click"
  type    = "A"
  ttl     = "300"
  records = each.value.pip
}
