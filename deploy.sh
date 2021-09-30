#Adicionando repositório da bitnami
helm repo add bitnami https://charts.bitnami.com/bitnami

#Instalação do redis
helm install redis bitnami/redis --values ./redis/config/values.yaml 

#Instalação do guestbook
helm install guestbook ./guestbook/config

echo "Aplicação instalada. Obs: O redis demora um pouco para iniciar."
echo "Exibindo porta: "
kubectl get svc
