
Write-Host "Aplicando estrategia Rolling Update..." -ForegroundColor Green


kubectl apply -f kubernetes/api.yaml


Write-Host ""

Write-Host "Acompanhando rollout..." -ForegroundColor Green


kubectl rollout status deployment/produtos-api


Write-Host ""

Write-Host "Pods apos Rolling Update:" -ForegroundColor Green


kubectl get pods

