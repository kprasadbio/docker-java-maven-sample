# docker-java-maven-sample
To build a image out of java maven project and to execute in docker

POM.xml
<build>
	  	<plugins>
	  		<plugin>
	        <groupId>com.spotify</groupId>
	             <artifactId>dockerfile-maven-plugin</artifactId>
	             <version>1.4.3</version>
	             <executions>
	                 <execution>
	                     <id>default</id>
	                     <goals>
	                         <goal>build</goal>
	                     </goals>
	                 </execution>
	             </executions>
	             <configuration>
	             <repository>docker.io/kancharlaprasad/docker-java-maven-sample</repository>
	                 <tag>latest</tag>
	             </configuration>
	         </plugin>
	  	</plugins>  	
	  </build>
    
Dockerfile: 
FROM java:8
WORKDIR /target/
#ADD target/dockerProj.jar
CMD ["java", "-jar", "dockerProj.jar"]

from cli use mvn package to build the project>>image with version as latest tag.
laster we can upload to our docker hub.
: docker login
<provide the credentials>
  
  docker tag <image id> <image name>:latest
  
  docker push <image name> OR <image id>
 
    
    
  
