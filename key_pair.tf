resource "aws_key_pair" "acloudguru" {
  key_name = "acloudguru"
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDUM0KdqwvkgYI1FBwmPQH7sMWXZoL43V2+ymFWsznHkNVjoP4ZB5TwobsJy+mb3P4FPellwdOl8VC/mAvaqWDYBralO0Tgl6j6OM36+4f5+ANJHcq3B1wosPygfGKma7tqkGy4WtBsTOCBk7wqml7gV3D00WvGQr5jrYVVlDklXM+Ax1IUaLeAjWNSBBxnU/cjo+qVrBZPJk+d0FRRqG8MeSIAJCVRBvT23nPfSHBkV9EdH8TrjK9kfDwxB0/5KFTTBa32OgGDVI6nrC0DnFYJRGhbbBBDCkwJ7H+r4ihDlWLDaAmKIxkVvCI5phfLTiH/Yr014nlHSxVBNUk2hUr"

  tags = merge(var.default_tags, {
    Name = "${var.service_name_lowercase}.acloudguru.key-pair"
  })
}
