FROM cptactionhank/atlassian-jira-service-desk:latest

MAINTAINER Jaroslaw Filiochowski <jarfil@gmail.com>

# grsec compatibility
# - switch to root user
# - install paxctl
# - disable MPROTECT on the java binary
# - remove paxctl
# - switch back to daemon user

USER root:root

RUN apt-get -y update \
	&& apt-get -y upgrade \
	&& apt-get -y install \
		paxctl \
	&& paxctl -c /usr/bin/java \
	&& paxctl -m /usr/bin/java \
	&& apt-get -y --purge purge paxctl \
	&& apt-get -y autoremove \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/

USER daemon:daemon
