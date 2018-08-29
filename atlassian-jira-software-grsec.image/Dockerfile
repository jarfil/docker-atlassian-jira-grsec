FROM cptactionhank/atlassian-jira-software:latest

MAINTAINER Jaroslaw Filiochowski <jarfil@gmail.com>

# grsec compatibility
# - switch to root user
# - install paxctl
# - disable MPROTECT on java binaries
# - remove paxctl
# - switch back to daemon user

USER root:root

RUN apk add paxctl \
	&& paxctl -cm /usr/lib/jvm/*/bin/* \
	; paxctl -cm /usr/lib/jvm/*/jre/bin/* \
	; apk del paxctl \
	&& rm -f /var/cache/apk/APKINDEX*

USER daemon:daemon
