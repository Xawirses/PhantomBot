FROM java:8-jre
MAINTAINER Xawirses <xawirses@gmail.com>
LABEL maintainer="Xawirses <xawirses@gmail.com>"

ENV PHANTOMBOT_VERSION 3.1.2
ENV PHANTOMBOT_ZIP PhantomBot-${PHANTOMBOT_VERSION}.zip
ENV PHANTOMBOT_URL https://github.com/PhantomBot/PhantomBot/releases/download/v${PHANTOMBOT_VERSION}/${PHANTOMBOT_ZIP}

RUN mkdir /phantombot
WORKDIR /phantombot

RUN curl --create-dirs -sLo /${PHANTOMBOT_ZIP} ${PHANTOMBOT_URL}
RUN unzip /${PHANTOMBOT_ZIP} -d /tmp
RUN mv /tmp/PhantomBot-${PHANTOMBOT_VERSION}/* /phantombot/

RUN rm /${PHANTOMBOT_ZIP}
RUN rm -rf /tmp/PhantomBot-${PHANTOMBOT_VERSION}

RUN chmod +x /phantombot/launch.sh && chmod u+x ./java-runtime-linux/bin/java

ENTRYPOINT ["/phantombot/launch.sh"]
