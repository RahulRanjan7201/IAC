who
docker version
code . 
docker version
docker stats
ls
mkdir webui-app mkdir java-code 
ls
cd webui-app/
git clone https://github.com/microsoft/project-html-website.git
cd project-html-website/
touch Dockerfile
cd ..
touch Dockerfile
docker build -t rahulwebui:v1 .
docker images
docker run --name rahulcontainer1 -d rahulwebui:v1
docker ps 
docker stats
docker inspect rahulcontainer1
docker ps
docker stop rahulcontainer1
docker rm  rahulcontainer1
docker ps
docker run --name rahulcontainer1 -d -p 7201:80  rahulwebui:v1
ping -n 1000 http://52.2.116.225:7201/
ping -n 1000 52.2.116.225:7201
kubectl version --client 
kubectl get nodes
mkdir ~/.kube
cp -v  /tmp/config ~/.kube/config
mkdir microservices
cd microservices/
mkdir moleculer-microservices
cd moleculer-microservices/
npm init -y
yum install nodejs18
sudo root
mkdir apache-server
mkdir rahul-python
cd rahul-python/
docker build -t rahulpython:v1 .
docker ps 
docker images
docker run -d -it --name rahulc1 rahulpython:v1
docker ps 
docker logs rahulpython:v1 
docker logs rahulc1
 docker logs rahulc1
docker build -t rahulpython:v2 -f rahul.dockerfile
docker build -t rahulpython:v2 -f rahul.dockerfile .
docker ps
docker stop rahulc1
docker rm rahulc1
docker ps
cd ..
cd webui-app/
docker build -t webapp:v2 -f httpd.dockerfile .
ls -a project-html-website/
docker build -t webapp:v2 -f httpd.dockerfile .
docker ps
docker images
docker run --name webapp -dp 7200:80 webapp:extov1
docker run --name webapp -dp 7200:80 webapp:v2
docker ps
docker build -t webapp:v2 -f httpd.dockerfile .
docker run --name webapp -dp 7200:80 webapp:v2
docker ps 
docker stop e783476047bb
docker stop 830bd20a06ef
docker run --name rahulwebapp -dp 7200:80 webapp:v2
docker ps
docker stop webapp:v2
docker stop a7c709048407
docker rm a7c709048407
docker images 
docker images | grep webapp
docker tag webapp:v2 docker.io/rahulranjan72/rahulwebexto:version1
docker login 
docker push docker.io/rahulranjan72/rahulwebexto:version1
docker tag webapp:v2 extoaksashu.azurecr.io/rahulwebui:appv1
docker login extoaksashu.azurecr.io
docker push extoaksashu.azurecr.io/rahulwebui:appv1
docker images 
docker logout extoaksashu.azurecr.io
kubectl version --client -o yaml
ls ~/.kube
node 
kubectl get nodes
cd ..
mkdir k8s-resource-design
cd k8s-resource-design/
cd .. 
cd k8s-resource-design/
ls
kubectl  create -f rahulpod1.yaml 
kubectl get pods 
kubectl get pod -o wide 
kubectl get pod rahulpod1  -o wide 
kubectl get pod rahulpod1  -
kubectl get pod rahulpod1  
kubectl get pods
kubectl logs rahulpod1
kubectl exec -it rahulpod1 -- bash
kubectl replace -f rahulpod1.yaml --force
kubectl get pods
kubectl describe pod rahulpod1
kubectl get nodes
kubectl delete po rahulpod1
kubectl get po
kubectl api-resources
kubectl create deployment rahul-deploy1 --image=rahulranjan72/rahulwebexto:version1 --port --dry-run=client -o yaml 
kubectl create deployment rahul-deploy1 --image=rahulranjan72/rahulwebexto:version1 --port --dry-run client -o yaml 
kubectl create deployment rahul-deploy1 --image=rahulranjan72/rahulwebexto:version1 --port 80  --dry-run=client -o yaml 
kubectl create deployment rahul-deploy1 --image=rahulranjan72/rahulwebexto:version1 --port 80  --dry-run=client -o yaml > deploy1.yaml
kubectl create -f deploy1.yaml 
kubectl get pods
kubectl get deployment
kubectl get po - o 
kubectl get po -o wide
kubectl get pods 
kubectl delete po rahul-deploy1-69bd7ffcc8-qhf7j
kubectl get pods 
kubectl apply -f deploy1.yaml 
kubectl get deployments 
kubectl scale deployment rahul-deploy1 --replicas=4
kubectl get deployments 
kubectl scale deployment rahul-deploy1 --replicas=6
kubectl get deployments 
kubectl create namespace rahul-project 
kubectl get ns 
kubectl config set-context --current --namespace rahul-project   
kubectl create -f deploy1.yaml 
kubectl get deploy
mkdir mynode-mongo-app
cd mynode-mongo-app/
kubectl   create  deploy rahul-node  --image=extoaksashu.azurecr.io/node-app:v1   --port 3000 --dry-run=client -o yaml  >node_deploy.yaml
kubectl create -f node_deploy.yaml 
kubectl get deploy 
kubectl describe po rahul-node
kubectl get events
histroy 
history
kubectl create secret docker-registry rahul-reg-cred extoaksashu.azurecr.io --docker-username extoaksashu  --docker-password="NRwjXeLhLbmBBQEzjeM0hWJKQIz53Xxqg6ji3RlzWl+ACRCev89b"  --dry-run=client -o yaml >az_secret.yaml
kubectl  create secret  docker-registry  rahul-reg-cred --docker-server extoaksashu.azurecr.io        --docker-username   extoaksashu   --docker-password="NRwjXeLhLbmBBQEzjeM0hWJKQIz53Xxqg6ji3RlzWl+ACRCev89b"  --dry-run=client -o yaml >az_secret.yaml
kubectl create -f az_secret.yaml 
kubectl get secrets
kubectl apply -f node_deploy.yaml 
kubectl get po
kubectl get deploy 
kubectl get secret
kubectl get deployments.apps
kubectl get pos
kubectl get po
kubectl expose deployment rahul-node --type LoadBalancer --port 80 --target-port 3000
kubectl expose deployment rahul-node --type LoadBalancer --port 80 --target-port 3000 --name rahul-node-lb --dry-run=client -o yaml > node_lb.yaml
kubectl create -f node_
kubectl create -f node_lb.yaml 
kubectl get svc 
kubectl get po 
kubectl log rahul-node-5bcc59bb46-99zl4
kubectl logs rahul-node-5bcc59bb46-99zl4
kubectl create deployment rahul-mongo --image=mongo --port 27017 --dry-run=client -o yaml >mongo_db.yaml
cls
kubertcl create secret generic rahul-db-credentials --from-literal myuser-rahul --from-literal my-passwor="ello" --dry-run=client -o yaml >db_cred.yaml
kubectl create secret generic rahul-db-credentials --from-literal myuser-rahul --from-literal my-passwor="ello" --dry-run=client -o yaml >db_cred.yaml
kubectl  create  secret generic  rahul-db-cred --from-literal my-user=rahul  --from-literal my-password="Hello" --dry-run=client -o yaml >db_cred.yaml
kubectl create -f db_cred.yaml 
kubectl get secret
kubectl create -f mongo_db.yaml 
kubect get deploy 
kubectl get deploy 
kubectl get po
kubectl logs rahul-node-5bcc59bb46-99zl4
kubectl expose deployment rahul-mongo --type ClusterIP --port 27017 --name rahul-mongo-lb --dry-run=client -o yaml > mongo_svc.yaml
kubectl create -f mongo_svc.yaml 
kubetcl get svc
kubectl get svc
kubectl get ep 
kubectl apply -f node_deploy.yaml 
kubectl logs rahul-node-5bcc59bb46-99zl4
kubetcl get svc
kubectl get svc
kubectl get po 
kubectl exec rahul-node-5bcc59bb46-99zl4 -- env
kubectl exec rahul-mongo-5cc84bdfc8-wnt94 -- env
kubectl replace -f node_deploy.yaml --force
kubectl get deploy 
kubectl get po 
kubectl get po
kubectl get deploy
kubectl autoscale rahul-node --min 2 --max 20 --cpu-percent 70 --dry-run=client -o yaml > hpa.yam
kubectl autoscale rahul-node --min 2 --max 20 --cpu-percent 70 --dry-run=client -o yaml > hpa.yaml
kubectl autoscale deployment  rahul-node --min 2 --max 20 --cpu-percent 70 --dry-run=client -o yaml > hpa.yaml
kubectl create -f hpa.yaml 
kubectl replace -f node_deploy.yaml --force
kubectl autoscale deployment  rahul-node --min 2 --max 20 --cpu-percent 70 --dry-run=client -o yaml > hpa.yaml
kubectl replace -f hpa.yaml 
kubectl get hpa
ls
kubectl get no
kubectl get ns
Kubectl config get-contexts
kubectl config get-contexts
kubectl get po -n default
cat ~/.kubeconfig
cat ~/.kube/config
kubecl config view
kubectl config view 
kubectl run pod1 --image=nginx
kubectl get po
kubectl get po -o wide
kubectl run -it --rm --image=alpine --command sh 
cd k8s-resource-design/
kubectl create -f deploy1.yaml 
kubectl delete -f deploy1.yaml 
kubectl create -f deploy1.yaml 
kubectl get po 
kubectl delete pod1
kubectl delete -f pod1
kubectl delete pod pod1
kubectl get po 
kubectl get deploy 
kubectl scale deploy rahul-deploy1 --replicas= 3
kubectl scale deploy rahul-deploy1 --replicas=3
kubetcl get deploy
kubectl get deploy
kubectl create services
kubectl create service
kubectl crete service clusterip rahul-web-internal-lb --tcp 1234:80 --dry-run=client -o yaml >web_lb.yaml
kubectl create service clusterip rahul-web-internal-lb --tcp 1234:80 --dry-run=client -o yaml >web_lb.yaml
kubectl get service
kubectl create -f web_lb.yaml 
kubectl get service
kubectl get po --show-labels
kubectl get ep 
kubectl replace -f web_lb.yaml 
kubectl get svc
kubectl get ep
kubectl delete all --all 
kubectl create -f deploy1.yaml 
kubectl get deploy 
kubectl get po 
kubectl apply -f deploy1.yaml 
kubectl get po 
kubectl expose deployment rahul-deploy1 --type ClusterIP --port 80 --name rahul-web-internal-lb --dry-run=client -o yaml > auto_web_lb.yaml
kubectl  create -f auto_web_lb.yaml 
kubectl get ep 
kubectl scale deployment rahul-deploy1 --replicas 9
kubectl get ep 
kuebctl get svc
kubectl get svc
kubectl delete svc rahul-web-internal-lb
kubectl expose deployment rahul-deploy1 --type LoadBalancer --port 80 --name rahul-web-extenal-lb --dry-run=client -o yaml > auto_web_external_lb.yaml
kubect create -f auto_web_external_lb.yaml 
kubectl create -f auto_web_external_lb.yaml 
kubectl get svc
kubectl delete svc rahul-web-extenal-lb
~/.bashrc
vim ~/.bashrc
source ~/.bashrc 
kubectl delete all -all 
kubectl delete all --all
kubectl get secret
kubectl get po 
kubectl get po -A
kubectl get all 
kubect apply -f mynode-mongo-app/
kubectl apply -f mynode-mongo-app/
kubectl delete  -f mynode-mongo-app/
helm version 
kubectl get ns
helm repo ls 
helm repo ls
kubectl get ns
kubectl get context
helm repo add rahul-repo https://charts.bitnami.com/bitnami
kubectl get ns
helm repo ls 
helm repo 
helm search repo ingress
helm repo add rahul-monitor https://prometheus-community.github.io/helm-charts
helm search repo ingress
helm search repo nginx
helm repo ls 
kubectl get all 
helm install rahul-app rahul-repo/nginx
kubectl get svc --namespace rahul-project -w rahul-app-nginx
kubectl get pods
helm ls
kubectl get deploy 
kubectl get svc 
kubectl get svc  rahul-app-nginx -o yaml
helm ls
helm uninstall rahul-app
mkdir helm-explore
cd helm-explore/
ls
helm create rahul-webapp
cd rahul-webapp/
ls
cd templates/
ls
cd ..
ls
cd ..
mkdir modify-helm-charts
cd modify-helm-charts/
helm install rahul-app rahul-repo --vales Values.yaml
helm install rahul-app rahul-repo --vaules Values.yaml
helm install rahul-app rahul-repo --values Vales.yaml
helm install rahul-app rahul-repo/nginx --values Vales.yaml
helm ls 
helm install rahul-app rahul-repo/nginx --values Values.yaml
helm ls 
helm install rahul-app rahul-repo/nginx --values Values.yaml
helm install rahul-app1 rahul-repo/nginx --values Values.yaml
helm install rahul-app2 rahul-repo/nginx --values Values.yaml
helm ls
helm  upgrade  rahul-app rahul-repo/nginx --values Values.yaml
helm ls 
helm  upgrade  rahul-app rahul-repo/nginx --values Values.yaml
helm ls 
kubectl get svc
kubectl get po
kubectl describe  po rahul-app-nginx-fb594b4b9-ft8pt
helm  upgrade  rahul-app rahul-repo/nginx --values Values.yaml
kubectl get svc
kubectl get svc -o yaml 
helm  upgrade  rahul-app rahul-repo/nginx --values Values.yaml
kubectl get svc -o yaml 
kubectl get svc
kubectl get po
kubectl describe po rahul-app-nginx-76f96c6479-59924 
kubectl get svc -o yaml 
helm  upgrade  rahul-app rahul-repo/nginx --values Values.yaml
kubectl get po
helm uninstall 
helm uninstall
helm uninstall all
helm uninstall --all
helm unistall 
kubectl delete all all,secret --all
kubectl delete  all,secret --all
cd ..
cd mysql/
 kubectl  create  secret generic  rahul-db-cred --from-literal my-user=rahul  --from-literal my-passwor
d="Hello" --dry-run=client -o yaml 
 kubectl  create  secret generic  rahul-db-cred --from-literal my-user=rahul  --from-literal my-password="rahul123" generic_user="newuser" generic_user_password="newpassword" --dry-run=client -o > rahul-db-cred
 kubectl  create  secret generic  rahul-db-cred --from-literal my-user=rahul  --from-literal my-password="rahul123" generic_user="newuser" generic_user_password="newpassword" --dry-run=client -o yaml > rahul-db-cred
 kubectl  create  secret generic  rahul-db-cred --from-literal my-user=rahul  --from-literal my-password="rahul123" generic_user="newuser" generic_user_password="newpassword" --dry-run=client -o yaml > db_cred.yaml
 kubectl  create  secret generic  rahul-db-cred   --from-literal my-password="rahul123" --from-literal  generic_user="newuser" --from-literal  generic_user_password="newpassword" --dry-run=client -o yaml > db_cred.yaml
cd ..
kubectl apply -f mysql/
kubectl get pods
kubectl get  svc
cd mysql/
kubectl create secret generic rahul_db_cred --from-env-file cred.env
kubectl create secret generic rahul_db_cred --from-env-file cred.env --dry-run=client -o yaml > db_secret.yaml
kubectl apply -f mysql/
cd ..
kubectl apply -f mysql/
kubectl delete  all,secret --all
kubectl apply -f mysql/
cd mongodb/
kubectl create secret generic rahul_db_cred --from-env-file cred.env --dry-run=client -o yaml > db_secret.yaml
kubectl delete  all,secret --all
kubectl  expose deployment task-mongo --port 27017 --name db-lb --dry-run=client -o yaml > mongodbsvc.yaml
kubectl create -f mongo_deploy.yaml 
kubectl create -f db_secret.yaml 
kubectl create -f mongo_deploy.yaml 
kubectl  expose deployment task-mongo --port 27017 --name db-lb --dry-run=client -o yaml > mongodbsvc.yaml
kubectl get pods
kubectl exec -it task-mongo-7787bbc46b-5d6p2 -- bash
kubectl exec -i task-mongo-7787bbc46b-5d6p2 -- bash
kubectl  expose deployment task-mongo --port 27017 --name db-lb --dry-run=client -o yaml > mongodbsvc.yaml
kubectl create -f mongodbsvc.yaml 
cd ..
kubectl apply -f mongodb/
kubectl exec -i task-mongo-7787bbc46b-5d6p2 -- bash
kubectl delete all, secret --all
kubectl delete all,secret --all
kubectl apply -f mongodb/
kubectl get ep
history > 4thday.txt
helm create rahul-mongo
cd mongodb/
helm create rahul-mongo
cd rahul-mongo/
rm -rf templates/hpa.yaml 
rm -rf templates/tests/
rm -rf templates/serviceaccount.yaml 
rm -rf templates/ingress.yaml 
kubectl delete all, secret --all
kubectl delete all,secret --all
helm install rahul-db /tmp/charts/exto-mongo/
kubectl get deploy 
kubectl get ep
kubectl get svc
helm ls 
kubectl get sc 
helm ls
helm uninstall rahul-db  
ls
cd ..
kubectl create -f pv.yaml
kubectl get pv
kubectl create -f pvc.yaml
kubectl get pvc
kubectl get pvc -n sha1
kubectl get pvc -n rahul-project
kubectl create -f deploy.yaml 
kubectl create -f mongo.yaml
ls
kubectl replace -f mongo_deploy.yaml --force
kubectl create -f db_secret.yaml 
kubectl create -f mongo.yaml
kubectl create -f mongo_deploy.yaml
kubectl get pvc 
kubectl get pv
kubectl create -f mongo_deploy.yaml
ls
cd rahul-apps/
ls
