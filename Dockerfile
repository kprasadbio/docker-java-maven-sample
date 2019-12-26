FROM java:8
WORKDIR /target/
#ADD target/dockerProj*.jar
CMD ["java", "-jar", "dockerProj-*.jar"]