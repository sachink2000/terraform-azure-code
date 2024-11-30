output "kube_config" {
  description = "The kubeconfig for the Kubernetes cluster"
  value       = azurerm_kubernetes_cluster.example.kube_config[0].raw_kube_config
}
