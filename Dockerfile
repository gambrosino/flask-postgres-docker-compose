FROM python:3.11.3-buster

ARG WORKDIR
ENV WORKDIR=${WORKDIR}

WORKDIR /home/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ADD  ${WORKDIR} .

RUN apt-get update && apt-get install -y gcc wget
RUN wget https://dlm.mariadb.com/2678574/Connectors/c/connector-c-3.3.3/mariadb-connector-c-3.3.3-debian-bullseye-amd64.tar.gz -O - | tar -zxf - --strip-components=1 -C /usr

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
