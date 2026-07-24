
Write-Host ""

Write-Host "Configurando Docker para usar o ambiente do Minikube..." -ForegroundColor Green

Write-Host ""


minikube docker-env | Invoke-Expression


Write-Host ""

Write-Host "Gerando pacote da aplicacao..." -ForegroundColor Green

Write-Host ""


mvn clean package


if ($LASTEXITCODE -ne 0) {

    Write-Host "Erro ao gerar o pacote Maven." -ForegroundColor Red

    exit 1

}


Write-Host ""

Write-Host "Criando imagem produtos-api:v2 no Docker do Minikube..." -ForegroundColor Green

Write-Host ""


docker build -t produtos-api:v2 -f docker/Dockerfile .


if ($LASTEXITCODE -ne 0) {

    Write-Host "Erro ao criar a imagem Docker v2 no Minikube." -ForegroundColor Red

    exit 1

}


Write-Host ""

Write-Host "Imagem criada com sucesso no Minikube: produtos-api:v2" -ForegroundColor Green

Write-Host ""

docker images produtos-api

