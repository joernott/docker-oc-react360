FROM registry.ott-consult.de/oc/node8
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV APP_USER=react \
    APP_UID=2006 \
    APP_GROUP=react \
    APP_GID=2006 \
    APP_HOME=/workspace \
    APP_NAME=myapp \
    GIT_COMMIT="" \
    IMAGE_HISTORY=" « jenkins-docker-oc-node8-29 « jenkins-docker-oc-base-36 « centos/7 declare -x OLDPWD declare -x PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin declare -x PWD=/ declare -x SHLVL=1 declare -x NODE_VERSION=8.12.0-1nodesource declare -x OLDPWD declare -x PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin declare -x PWD=/ declare -x SHLVL=1" \
    REACTVR_VERSION="1.0.0" \
    REACT_VERSION="16.5.2"


COPY src /

RUN /tmp/install/oc-react360.sh

EXPOSE 8081

ENTRYPOINT /entrypoint
