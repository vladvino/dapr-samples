kubectl port-forward service/demo-apim-gateway 8080:80 8081:443

kubectl rollout restart deployment/demo-apim-gateway

export REDIS_PASSWORD=$(kubectl get secret --namespace default redis -o jsonpath="{.data.redis-password}" | base64 --decode)
echo $REDIS_PASSWORD