FROM openjdk:8-jdk-bullseye
WORKDIR /iiq/ssb
#ENV JAVA_HOME=/usr
ARG build_hostname
ENV HOSTNAME=$build_hostname
ENTRYPOINT [ "/bin/bash" ]
CMD ["./build.sh"]
