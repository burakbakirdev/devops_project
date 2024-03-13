FROM openjdk:21

LABEL maintainer="iburakbakir1@gmail.com"

ENV APP_NAME="HelloWorld"
ENV VERSION="v1.0.0"
ENV PORT ="4444"

RUN echo "App Data Name : $APP_NAME"
RUN echo "App Data Version : $VERSION"
RUN echo "App Data Port : $PORT"

VOLUME /tmp 2

EXPOSE 4444 

ARG JAR_FILE=HelloWorld.jar

ADD ${JAR_FILE} hello_world_container

ENTRYPOINT [ "java","-jar","/hello_world_container" ]