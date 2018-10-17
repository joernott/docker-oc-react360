FROM registry.ott-consult.de/oc/node8
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV APP_USER=react \
    APP_UID=2006 \
    APP_GROUP=react \
    APP_GID=2006 \
    APP_HOME=/workspace \
    APP_NAME=myapp \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x" \
    REACTVR_VERSION="0.3.6" \
    REACT_VERSION="16.5.2"


COPY src /

RUN /tmp/install/oc-react360.sh

EXPOSE 8081

ENTRYPOINT /entrypoint
