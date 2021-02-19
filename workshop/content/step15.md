To verify the service was created, let's use kubectl to display current services

```terminal:execute
command: kubectl get service
```

Validate our Hugo application works by selecting _Kubernetes App_ button on the right.

You can then delete the deployment and service with kubectl:

```terminal:execute
command: kubectl delete -f deployment.yaml
```

```terminal:execute
command: kubectl delete -f service.yaml
```

Try to confirm both were deleted using kubectl commands.
