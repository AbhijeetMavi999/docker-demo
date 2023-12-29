# define base docker image
FROM openjdk:17
# Set the port number
EXPOSE 8080
# Set the contact information of the maintainer of the Docker image.
LABEL maintainer="abhijeetmavi999"
# Adding the jar file
ADD target/springboot-docker-demo-1.0.0.jar springboot-docker-demo.jar
ENTRYPOINT ["java", "-jar", "springboot-docker-demo.jar"]


# Note that EXPOSE does not actually publish the port to the host system - you still need to use the -p or -P options
# when running the docker run command to publish and map the container port to the host system.
# example:- docker run -p 8080:8080 my-image
