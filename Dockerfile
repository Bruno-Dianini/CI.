FROM ubuntu:23.10

RUN apt-get update && apt-get install unzip -y

CMD [ "echo", " um novo container!" ]
