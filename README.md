# [Educates](https://docs.eduk8s.io) workshop port of Katacoda scenario [Intro to Containers](https://github.com/kube-academy/katacoda-scenarios/tree/master/intro-to-containers-k8s)

After cloning this repo and navigating to its base directory, you can deploy the workshop with:

```bash
kubectl apply -f resources/workshop.yaml
```

And a sample training portal with:

```bash
kubectl apply -f resources/training-portal.yaml
```

Get the URL for accessing the training portal with:

```bash
kubectl get trainingportal
```

The training portal is configured to allow anonymous access. For your own
workshop content you should consider removing anonymous access.
