docker build -t stephengrider/multi-client:latest -t stephengrider/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t stephengrider/multi-server:latest -t stephengrider/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t stephengrider/multi-worker:latest -t stephengrider/multi-worker:$SHA -f ./worker/Dockerfile ./worker
docker push stephengrider/multi-worker:latest
docker push stephengrider/multi-server:latest
docker push stephengrider/multi-client:latest
docker push stephengrider/multi-worker:$SHA
docker push stephengrider/multi-server:$SHA
docker push stephengrider/multi-client:$SHA
kubectl apply -f k8s      #k8s is directory where all kubernetes file are located
kubectl set image deployments/server-deployment server=stephengrider/multi-server:$SHA
kubectl set image deployments/worker-deployment server=stephengrider/multi-worker:$SHA
kubectl set image deployments/client-deployment server=stephengrider/multi-client:$SHA
