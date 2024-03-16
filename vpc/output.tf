output private_subnets {
  Description: List of IDs of private subnets
  value = module.vpc.private_subnets
}
  

output public_subnets {
  Description: List of IDs of public subnets
  value = module.vpc.public_subnets
}