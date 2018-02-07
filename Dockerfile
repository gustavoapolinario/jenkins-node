FROM node

FROM jenkins

USER root

COPY --from=0 /usr/local /usr/local
COPY --from=0 /opt/yarn /opt/yarn

RUN apt-get update && apt-get install -y nodejs

RUN curl -sSL https://get.docker.com/ | sh

RUN npm --version
RUN docker --version

RUN usermod -aG docker jenkins


RUN /usr/local/bin/install-plugins.sh locale


RUN yarn global add gulp grunt node-sass bower

USER jenkins

#Folders Plugin OWASP Markup Formatter Plugin Build Timeout Credentials Binding Plugin Timestamper Workspace Cleanup Plugin Ant Plugin Gradle Plugin Pipeline GitHub Branch Source Plugin Pipeline: GitHub Groovy Libraries Pipeline: Stage View Plugin Git plugin Subversion Plug-in SSH Slaves plugin Matrix Authorization Strategy Plugin PAM Authentication plugin LDAP Plugin Email Extension Plugin Mailer Plugin
