FROM ubuntu

MAINTAINER bestseantt<bestseantt@gmail.com>

ENV JAVA_HOME=/share/toolset/jdk1.8.0_65
ENV PATH=$JAVA_HOME/bin:$PATH 
ENV CLASSPATH=$JAVA_HOME/jre/lib/ext:$JAVA_HOME/lib/tools.jar 

WORKDIR /root

RUN echo $JAVA_HOME >> .bashrc \
    && echo $PATH >> .bashrc \
    && echo $CLASSPATH >> .bashrc \
    && echo "export PATH JAVA_HOME CLASSPATH"

RUN apt update \
    && apt install openssh-server -y \
    && apt-get clean

EXPOSE 22

CMD /usr/sbin/sshd -D
