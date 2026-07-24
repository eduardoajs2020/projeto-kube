
mvn clean package


docker build -t produtos-api:v1 -f docker/Dockerfile .


kubectl apply -f kubernetes/postgres.yaml


kubectl apply -f kubernetes/postgres-service.yaml


kubectl apply -f kubernetes/api.yaml


kubectl apply -f kubernetes/api-service.yaml


kubectl get pods


kubectl get svc

