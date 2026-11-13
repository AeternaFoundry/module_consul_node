output "nodes_id" {
  description = "Map of id values across all nodes, keyed the same as var.nodes"
  value       = { for k, v in consul_node.nodes : k => v.id }
}
output "nodes_address" {
  description = "Map of address values across all nodes, keyed the same as var.nodes"
  value       = { for k, v in consul_node.nodes : k => v.address }
}
output "nodes_datacenter" {
  description = "Map of datacenter values across all nodes, keyed the same as var.nodes"
  value       = { for k, v in consul_node.nodes : k => v.datacenter }
}
output "nodes_meta" {
  description = "Map of meta values across all nodes, keyed the same as var.nodes"
  value       = { for k, v in consul_node.nodes : k => v.meta }
}
output "nodes_name" {
  description = "Map of name values across all nodes, keyed the same as var.nodes"
  value       = { for k, v in consul_node.nodes : k => v.name }
}
output "nodes_partition" {
  description = "Map of partition values across all nodes, keyed the same as var.nodes"
  value       = { for k, v in consul_node.nodes : k => v.partition }
}
output "nodes_token" {
  description = "Map of token values across all nodes, keyed the same as var.nodes"
  value       = { for k, v in consul_node.nodes : k => v.token }
  sensitive   = true
}

