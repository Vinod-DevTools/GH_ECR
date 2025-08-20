output "demo_repo_url" {
  value = module.ecr_demo.aws_ecr_repository.this.repository_url
}

 