
Write-Host "Aplicando manifests Kubernetes..." -ForegroundColor Green


kubectl apply -f kubernetes/postgres.yaml

kubectl apply -f kubernetes/postgres-service.yaml

kubectl apply -f kubernetes/api.yaml

kubectl apply -f kubernetes/api-service.yaml


Write-Host ""

Write-Host "Verificando Pods..." -ForegroundColor Green

kubectl get pods


Write-Host ""

Write-Host "Verificando Services..." -ForegroundColor Green

kubectl get svc


Write-Host ""

Write-Host "Status do rollout da API..." -ForegroundColor Green

kubectl rollout status deployment/produtos-api


Write-Host ""

Write-Host "Para acessar a API:" -ForegroundColor Yellow

Write-Host "minikube service produtos-api"

