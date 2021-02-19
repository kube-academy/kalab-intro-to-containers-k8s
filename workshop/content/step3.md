Perform an image build of the website using the [docker build](https://docs.docker.com/engine/reference/commandline/build/) command. This uses our Dockerfile to build the image. We'll also give our image the name `hugo-site` and the tag `v1`.

```terminal:execute
command: docker build -t hugo-site:v1 .
```

The dot at the end of the command tells Docker to build in our current directory.
