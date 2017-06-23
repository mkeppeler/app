FROM websphere-liberty:kernel
COPY server.xml /config/
RUN installUtility install --acceptLicense defaultServer

# Install cron
# RUN apt-get update

# Add app.war file in the dropins directory
ADD app.war /opt/ibm/wlp/usr/servers/defaultServer/dropins/

# Add environment variable to accept the wlp license
ENV LICENSE accept
