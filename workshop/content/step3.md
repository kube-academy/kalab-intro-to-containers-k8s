Perform an image build of the website using the [docker build](https://docs.docker.com/engine/reference/commandline/build/) command. This uses our Dockerfile to build the image. We'll also give our image a name and a tag:

name: `hugo-site`

tag: `v1`

The dot at the end of the command tells Docker to build in our current directory.

```terminal:execute
command: docker build -t hugo-site:v1 .
```
