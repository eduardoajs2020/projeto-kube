
Write-Host ""

Write-Host "Removendo imagens Docker do projeto..." -ForegroundColor Green

Write-Host ""


docker rmi produtos-api:v1 2>$null

docker rmi produtos-api:v2 2>$null


Write-Host ""

Write-Host "Limpeza concluida." -ForegroundColor Green

Write-Host ""

