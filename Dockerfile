FROM java:8
RUN yum –y install openssh-server openssh-clients
RUN service sshd start && service sshd enable
ADD ./target/gs-spring-boot-0.1.0.jar app.jar
CMD ["/usr/sbin/sshd", "-D"]
ENTRYPOINT ["java","-jar","app.jar"]
