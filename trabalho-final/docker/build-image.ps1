
Write-Host ""

Write-Host "Gerando pacote da aplicacao..." -ForegroundColor Green

Write-Host ""


mvn clean package


if ($LASTEXITCODE -ne 0) {

    Write-Host "Erro ao gerar o pacote Maven." -ForegroundColor Red

    exit 1

}


Write-Host ""

Write-Host "Criando imagem Docker produtos-api:v1..." -ForegroundColor Green

Write-Host ""


docker build -t produtos-api:v1 -f docker/Dockerfile .


if ($LASTEXITCODE -ne 0) {

    Write-Host "Erro ao criar a imagem Docker." -ForegroundColor Red

    exit 1

}


Write-Host ""

Write-Host "Imagem criada com sucesso: produtos-api:v1" -ForegroundColor Green

Write-Host ""

docker images produtos-api

