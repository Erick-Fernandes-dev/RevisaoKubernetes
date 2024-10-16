# Resumo

Init containers

YAML que utilizamos:
```yaml
    apiVersion: v1
    kind: Pod
    metadata:
      labels:
        run: demo
      name: demo
    spec:
      containers:
      - image: httpd
        name: demo
      initContainers:
      - image: busybox:1.28
        name: waitfordns
        command:
          - sh
          - -c
          - until nslookup order-database; do echo "Trying to resolve order-database"; sleep 2; done
```
Multi-container pods

YAML que utilizamos:
```yaml
    apiVersion: v1
    kind: Pod
    metadata:
      labels:
        run: demo-multi
      name: demo-multi
    spec:
      containers:
      - image: httpd
        name: demo
      - image: alpine
        name: debug
        command:
          - sh
          - -c
          - sleep 99999999
```
lifecycle: Como um pod é terminado?

YAML que utilizamos:
```yaml
    apiVersion: v1
    kind: Pod
    metadata:
      labels:
        run: worker-pod
      name: worker-pod
    spec:
      terminationGracePeriodSeconds: 60
      containers:
      - image: alpine
        name: alpine
        command:
          - "sleep"
          - "99999999"
        lifecycle:
          preStop:
            exec:
              command:
                - sh
                - -c
                - curl 10.244.2.32

```