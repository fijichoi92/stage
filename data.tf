module "test" {
  source = "../01_test"

  name             = "khchoi"
  region           = "ap-northeast-2"
  ava              = ["a", "c"]
  key              = "khchoi2-key"
  cidr_main        = "10.0.0.0/16"
  cidr_public      = ["10.0.0.0/24", "10.0.2.0/24"]
  cidr_private     = ["10.0.1.0/24", "10.0.3.0/24"]
  cidr_privatedb   = ["10.0.4.0/24", "10.0.5.0/24"]
  cidr_route       = "0.0.0.0/0"
  cidr_ipv6        = "::/0"
  protocol_main    = "tcp"
  protocol_http    = "http"
  protocol_http1   = "HTTP"
  protocol_ssh     = "ssh"
  protocol_sql     = "sql"
  protocol_icmp    = "icmp"
  port_http        = 80
  port_ssh         = 22
  port_sql         = 3306
  port_zero        = 0
  ami_amazon_linux = "ami-04e8dfc09b22389ad"
  default_instance = "t2.micro"
  private_ip       = "10.0.0.11"
  lb_type          = "application"
  hc_matcher       = "200"
  hc_path          = "/health.html"
  hc_port          = "traffic-port"
  admin_role       = "admin_role"
  place_str        = "cluster"
  asg_min          = 2
  asg_max          = 10
  asg_cap          = 2
  rds_stor         = 20
  rds_type         = "gp2"
  rds_engine       = "mysql"
  rds_engine_ver   = "8.0"
  rds_class        = "db.t2.micro"
  rds_name         = "test"
  rds_user         = "admin"
  rds_pass         = "dinho2005!"

}