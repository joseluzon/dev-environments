ARG VARIANT=latest
FROM joseluzon/python3-base:${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libkrb5-dev

RUN pip3 install --upgrade pip
RUN pip3 install Django
RUN pip3 install pymongo[snappy,gssapi,srv,tls]
RUN pip3 install dnspython

