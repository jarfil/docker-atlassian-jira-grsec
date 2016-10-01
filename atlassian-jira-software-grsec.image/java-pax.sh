#!/bin/bash

( cat << END
appletviewer
extcheck
idlj
jar
jarsigner
javac
javadoc
javah
javap
jcmd
jconsole
jdb
jdeps
jhat
jinfo
jmap
jps
jrunscript
jsadebugd
jstack
jstat
jstatd
native2ascii
rmic
schemagen
serialver
wsgen
wsimport
xjc
END
) | while read f ; do
	f="/usr/lib/jvm/java-8-openjdk-amd64/bin/$f"
	paxctl -c "$f"
	paxctl -m "$f"
done

( cat << END
java
jjs
keytool
orbd
pack200
policytool
rmid
rmiregistry
servertool
tnameserv
END
) | while read f ; do
	f="/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/$f"
	paxctl -c "$f"
	paxctl -m "$f"
done
