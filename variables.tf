variable "nodes" {
  description = <<EOT
Map of nodes, attributes below
Required:
    - address
    - name
Optional:
    - datacenter
    - meta
    - partition
    - token
EOT

  type = map(object({
    address    = string
    name       = string
    datacenter = optional(string)
    meta       = optional(map(string))
    partition  = optional(string)
    token      = optional(string)
  }))
}

