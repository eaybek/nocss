FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/nocss/nocss/ /root/packages/nocss/
WORKDIR /root/packages/nocss
RUN pip3 install /root/packages/nocss

CMD ["python3","test/nocss.py"]


