FROM openjdk:8-jdk
ADD ./target/gs-spring-boot-0.1.0.jar app.jar
CMD ["/usr/sbin/sshd", "-D"]
ENTRYPOINT ["java","-jar","app.jar"]
