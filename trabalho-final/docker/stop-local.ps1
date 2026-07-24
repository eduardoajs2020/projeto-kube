
Write-Host ""

Write-Host "Parando containers locais..." -ForegroundColor Green

Write-Host ""


docker stop produtos-api 2>$null

docker stop produtos-postgres 2>$null


Write-Host ""

Write-Host "Removendo containers locais..." -ForegroundColor Green

Write-Host ""


docker rm produtos-api 2>$null

docker rm produtos-postgres 2>$null


Write-Host ""

Write-Host "Removendo rede local..." -ForegroundColor Green

Write-Host ""


docker network rm produtos-network 2>$null


Write-Host ""

Write-Host "Ambiente local removido." -ForegroundColor Green

Write-Host ""

