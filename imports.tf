# import {
#   to = module.main.aws_vpc.this[0]
#   id = "VPC"
# }

# import {
#   to = module.main.aws_subnet.public[0]
#   id = "public-subnet-1"
# }

# import {
#   to = module.main.aws_subnet.public[1]
#   id = "public-subnet-2"
# }

# import {
#   to = module.main.aws_internet_gateway.this[0]
#   id = "internet-gateway"
# }

# import {
#   to = module.main.aws_route.public_internet_gateway[0]
#   id = "route-table_default-route"
# }

# import {
#   to = module.main.aws_route_table.public[0]
#   id = "route-table"
# }

# import {
#   to = module.main.aws_route_table_assoiation.public[0]
#   id = "subnet1/routetable"
# }

# import {
#   to = module.main.aws_route_table_assoiation.public[1]
#   id = "subnet2/routetable"
# }

# import {
#   to = aws_security_group.ingress
#   id = "securitygroup"
# }

