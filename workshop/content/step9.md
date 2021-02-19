To prepare a docker image for a registry, we tag it using the registry url.

```terminal:execute
command: docker tag hugo-site:v1 {{ registry_host }}/hugo-site:v1
```
