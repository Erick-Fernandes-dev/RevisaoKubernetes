## Comandos 

```bash
kubectl get po --show-labels
kubectl get po -l app=httpd

kubectl delete po -l <chave=valor>

# kubectl explain
kubectl explain deployment.spec.template.spec.containers
```

### Gerenciando Rollout

```bash

kubectl rollout history deployment/httpd
kubectl rollout status deployment/httpd
kubectl rollout pause deployment/httpd
kubectl rollout resume deployment/httpd
kubectl rollout undo deployment/httpd
kubectl rollout undo deployment/httpd --to-revision 1

```

### Escalando deployment

```bash
kubectl scale deployment httpd --replicas 110
```

