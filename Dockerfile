FROM centos:7.6.1810

ADD jdk_1.8.0_65 /usr/local/
ENV JAVA_HOME /usr/local/jdk_1.8.0_65
ENV PATH ${PATH}:${JAVA_HOME}/bin



ADD placeservice-lite-6.0.5-SNAPSHOT.jar /opt/placeservice/

EXPOSE 8743

ENTRYPOINT ["java","-jar","/opt/placeservice/placeservice-lite-6.0.5-SNAPSHOT.jar"]

WORKDIR /opt

