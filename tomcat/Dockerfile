FROM ubuntu:latest

# Update and upgrade system packages
RUN apt-get -y update && apt-get -y upgrade

# Install OpenJDK 11
RUN apt-get -y install openjdk-11-jdk wget

# Create the Tomcat directory
RUN mkdir /usr/local/tomcat

# Download and extract Tomcat 10.1
RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.13/bin/apache-tomcat-10.1.13.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-10.1.13/* /usr/local/tomcat/

# Add Tomcat configuration files
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF
ADD petclinic.war /usr/local/tomcat/webapps/

# Expose Tomcat on port 8080
EXPOSE 8080

# Start Tomcat
CMD /usr/local/tomcat/bin/catalina.sh run
