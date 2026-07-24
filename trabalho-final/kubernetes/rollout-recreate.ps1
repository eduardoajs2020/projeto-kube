
Write-Host "Aplicando estrategia Recreate..." -ForegroundColor Green


kubectl apply -f kubernetes/api-recreate.yaml


Write-Host ""

Write-Host "Acompanhando rollout..." -ForegroundColor Green


kubectl rollout status deployment/produtos-api


Write-Host ""

Write-Host "Pods apos Recreate:" -ForegroundColor Green


kubectl get pods

