
Write-Host ""

Write-Host "Criando rede Docker local..." -ForegroundColor Green

Write-Host ""


docker network create produtos-network 2>$null


Write-Host ""

Write-Host "Subindo PostgreSQL local..." -ForegroundColor Green

Write-Host ""


docker run -d 

  --name produtos-postgres 

  --network produtos-network 

  -e POSTGRES_DB=produtosdb 

  -e POSTGRES_USER=admin 

  -e POSTGRES_PASSWORD=admin123 

  -p 5432:5432 

  postgres:16


Write-Host ""

Write-Host "Subindo API local..." -ForegroundColor Green

Write-Host ""


docker run -d 

  --name produtos-api 

  --network produtos-network 

  -e SPRING_DATASOURCE_URL=jdbc:postgresql://produtos-postgres:5432/produtosdb 

  -e SPRING_DATASOURCE_USERNAME=admin 

  -e SPRING_DATASOURCE_PASSWORD=admin123 

  -p 8080:8080 

  produtos-api:v1


Write-Host ""

Write-Host "Containers em execucao:" -ForegroundColor Green

docker ps


Write-Host ""

Write-Host "API disponivel em:" -ForegroundColor Yellow

Write-Host "http://localhost:8080/produtos"

Write-Host ""

