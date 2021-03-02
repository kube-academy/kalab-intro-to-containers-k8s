This repository is an [Educates](https://docs.edukates.io/) workshop.

It is a port of the Katacoda scenario [Intro to Containers](https://github.com/kube-academy/katacoda-scenarios/tree/master/intro-to-containers-k8s).

This scenario is published as part of the kube academy course ["Hands-On with Kubernetes and Containers"](https://kube.academy/courses/hands-on-with-kubernetes-and-containers).

## Deployment Instructions

1. Clone this repo
1. Navigate to its base directory
1. Deploy the workshop:

    ```bash
    kubectl apply -f resources/workshop.yaml
    ```

1. Deploy a sample training portal:

    ```bash
    kubectl apply -f resources/training-portal.yaml
    ```

1. Get the URL for the training portal:

    ```bash
    kubectl get trainingportal
    ```

The training portal is configured to allow anonymous access. For your own
workshop content you should consider removing anonymous access.
