### Copy paste the following code ###

```
module "three_tier" {
  source                = "../"
  private_subnet1_range = "10.0.1.0/24"
  private_subnet2_range = "10.0.2.0/24"
  private_subnet3_range = "10.0.3.0/24"
  resource_group_name   = "dev"         #Precreate this while creating Backend Container
  security_group_name   = "sec_group1"
  vm1_computername      = "vm1"
  vm2_computername      = "vm2"
  vm3_computername      = "vm3"
  address_space         = "10.0.0.0/16"
  vnet_name             = "vnet1"
  location              = "westus2"
  environment           = "dev"

  #OS Information
  publisher      = "OpenLogic"
  offer          = "CentOS"
  sku            = "7.5"
  version        = "latest"
  admin_username = "centos"
  vm_size        = "Standard_DS1_v2"
  os_version     = "latest"

  tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "DevOps"
    Department  = "IT"
    Bill        = "CFO"
    Quarter     = "3"
  }
}
```





###  Copy paste the following code  ###



```
output "VM1" {
  value = "${module.three_tier.VM1} 
}

output "VM2" {
  value = "${module.three_tier.VM2} 
}

output "VM3" {
 value = "${module.three_tier.VM3}
}

output "VNET" {
  value = "${module.three_tier.VNET}
}
```



```
Ahmed DevOps
```