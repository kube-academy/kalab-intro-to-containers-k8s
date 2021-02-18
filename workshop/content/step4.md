Once the build has finished, we can use the docker images command to verify our
container image is available and ready to be deployed as a container:

```terminal:execute
command: docker images hugo-site:v1
```

The output will show you not only the name and tag for the image, but when the
image was created and the image's size.