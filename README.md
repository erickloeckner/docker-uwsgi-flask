# docker-uwsgi-flask

--build image "python-hello_world" version 1.1 from dockerfile in current dir:
sudo docker image build -t python-hello_world:1.1 .

--run container, forward port 8000 -> 8000, named "hello", using image "python-hello_world" version 1.1:
sudo docker container run --publish 8000:8000 --detach --name hello python-hello_world:1.1

--stop container "hello":
sudo docker stop hello

--remove container "hello"
sudo docker container rm hello

--enter container named "hello" and run bash shell:
sudo docker container exec -it hello /bin/bash

--list available images:
sudo docker images

--list all containers:
sudo docker container ls -a
