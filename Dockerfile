FROM centos
RUN cd /usr/local/tomcat/webapps/ && rm -rf * 
COPY webapp/target/*.war  /usr/local/tomcat/webapps 
CMD "catalina.sh" "run"
EXPOSE 8080

