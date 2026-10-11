resource "consul_node" "nodes" {
  for_each = var.nodes

  address    = each.value.address
  name       = each.value.name
  datacenter = each.value.datacenter
  meta       = each.value.meta
  partition  = each.value.partition
  token      = each.value.token
}

