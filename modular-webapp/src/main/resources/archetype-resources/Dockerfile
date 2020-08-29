FROM jboss/wildfly:latest

ADD *.war $JBOSS_HOME/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]