FROM tomcat
ADD target/CounterWebApp.war /usr/local/tomcat/webapps/
EXPOSE 8080
