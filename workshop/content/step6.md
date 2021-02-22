
View the site and make sure it's working.

```dashboard:create-dashboard
name: Docker App
url: "{{ingress_protocol}}://{{session_namespace}}-docker-app.{{ingress_domain}}/"
```

Back in your terminal, view the running container with the `docker ps` command:

```terminal:execute
command: docker ps | grep hugo
```
