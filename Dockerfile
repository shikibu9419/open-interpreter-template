FROM ubuntu:22.04

WORKDIR /root/project

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git python3 python3-pip
RUN pip install git+https://github.com/shikibu9419/open-interpreter.git

COPY requirements.txt /root/project/
RUN pip install -r requirements.txt

CMD ["interpreter", "-y"]
