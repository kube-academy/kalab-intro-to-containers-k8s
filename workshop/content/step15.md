To verify the service was created, let's use kubectl to display current services

```terminal:execute
command: kubectl get service
```

NodePort-type services are accessed via the IP address of any of the Kubernetes cluster's worker nodes on the specified node port, which in this case is 32321.

This environment is not configured to allow ingress on custom ports, and so we are unable to access the service using NodePort.

We can however demonstrate access from the terminal to a ClusterIP-type service.

1. Delete the node-port service:

    ```terminal:execute
    command: kubectl delete -f service.yaml
    ```

1. Create instead a Cluster IP type service:

    ```terminal:execute
    command: kubectl apply -f cluster-ip-service.yaml
    ```

1. Access the service endpoint to validate that the Hugo application works.

    ```terminal:execute
    command: curl http://hugo-site.{{ session_namespace }}.svc.cluster.local/
    ```

Note how the service listens on port 80 but forwards requests to one of the backing endpoints listening on port 8080.

View these endpoints with the following command:

```terminal:execute
command: kubectl get endpoints
```
