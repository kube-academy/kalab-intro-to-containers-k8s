Now that your image has been created, we can run a container using the image.
Use the docker run command below to launch a container from your image:

```terminal:execute
command: docker run -d --rm --name hugo -p 8080:8080 hugo-site:v1
```

The Docker runtime will return a UUID of the running container.
Notice the run command specifies a port mapping for port `8080` outside the container to port `8080` inside the container.
Remember, our container expects to expose port 8080.
Using this port mapping method, you could run multiple containers from this image on the same host and avoid port conflicts.
