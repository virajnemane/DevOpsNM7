build image from cmd-Dockerfile
docker run -t demo-cmd
docker run demo hostname

build image from entrypoint-Dockerfile
docker run -t demo-ep
docker run demo hostname

build image from combination-Dockerfile
docker run demo-comb
docker run dmeo-comb google.com
docker run -it --entrypoint /bin/bash demo-comb