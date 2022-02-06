#build image
docker image build -t d2 .

#Running container
docker container run -itd --name d2 --rm -p 5000:5000 d2

#open http://localhost:5000 or http://ip:5000 in your browser

###############################################################
ENTRYPOINT vs CMD
==================
ENTRYPOINT and CMD have same functionality. But they behave differently when extra parameter provided.

i.e.
CMD ping -c3 localhost  ----> entry in Dockerfile
docker run <imagename>      -----> this will execute as normal.
docker run <imagename> hostname -----> ping process get replaced with hostname command.

i.e.
ENTRYPINT ping -c3 localhost    -----> entry in Dockerfile
docker run <imagename>          -----> this will execute as normal.
docker run --entrypoint hostname <imagename>    -----> this will replace ping with hostname

Note - CMD can be overwrite by providing command at the time of docker run command
Note - ENTRYPOINT can be overwrite by passing as a parameter
Note - if you given multiple CMD then only last CMD will be considered.

now suppose we don't want to replace primary process but just want to replace parameter,
in such scenario we can use combination of ENTRYPOINT and CMD.

i.e.
ENTRYPOINT ["ping","-c3"]
CMD ["localhost"]

docker run <imagename>  -----> this will ping localhost 3 times
docker run <imagename> google.com   ----> this will ping google.com 3 times

CMD bash way and CMD parameter way
===================================
CMD ping -c3 localhost          -----> bash way
CMD ["ping","-c3","localhost"]  -----> parameter way