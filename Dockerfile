FROM ubuntu:14.04

RUN apt-get update -y \
    && apt-get install -y \
        curl \
        python-setuptools \
        jq \
    && easy_install pip \
    && pip install awscli

COPY ecs-deploy /usr/local/bin/ecs-deploy

RUN chmod a+x /usr/local/bin/ecs-deploy

ENTRYPOINT ["/usr/local/bin/ecs-deploy"]
