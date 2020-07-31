FROM tomcat:8.5.38
ADD ./war-test.war /usr/local/tomcat/webapps/
RUN chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
