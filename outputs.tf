output "nodes_id" {
  description = "Map of id values across all nodes, keyed the same as var.nodes except keys with no id are omitted"
  value       = { for k, v in consul_node.nodes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nodes_address" {
  description = "Map of address values across all nodes, keyed the same as var.nodes except keys with no address are omitted"
  value       = { for k, v in consul_node.nodes : k => v.address if v.address != null && length(v.address) > 0 }
}
output "nodes_datacenter" {
  description = "Map of datacenter values across all nodes, keyed the same as var.nodes except keys with no datacenter are omitted"
  value       = { for k, v in consul_node.nodes : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "nodes_meta" {
  description = "Map of meta values across all nodes, keyed the same as var.nodes except keys with no meta are omitted"
  value       = { for k, v in consul_node.nodes : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "nodes_name" {
  description = "Map of name values across all nodes, keyed the same as var.nodes except keys with no name are omitted"
  value       = { for k, v in consul_node.nodes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "nodes_partition" {
  description = "Map of partition values across all nodes, keyed the same as var.nodes except keys with no partition are omitted"
  value       = { for k, v in consul_node.nodes : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "nodes_token" {
  description = "Map of token values across all nodes, keyed the same as var.nodes except keys with no token are omitted"
  value       = { for k, v in consul_node.nodes : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

