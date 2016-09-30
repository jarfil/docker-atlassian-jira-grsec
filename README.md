# docker-atlassian-jira-grsec
Based on cptactionhank/atlassian-jira, to add grsec support

### grsec problem and fix

```
OpenJDK 64-Bit Server VM warning: INFO: os::commit_memory(0x00000340f817d000, 2555904, 1) failed; error='Operation not permitted' (errno=1)
#
# There is insufficient memory for the Java Runtime Environment to continue.
# Native memory allocation (mmap) failed to map 2555904 bytes for committing reserved memory.
# An error report file with more information is saved as:
# /var/atlassian/jira/hs_err_pid107.log
```

https://stackoverflow.com/questions/27262629/jvm-cant-map-reserved-memory-when-running-in-docker-container

### images

Atlassian JIRA Core wrapped in a Docker image
* Image: jarfil/atlassian-jira-grsec
  * atlassian-jira-grsec.image
* Base: cptactionhank/atlassian-jira
  * Docker: https://hub.docker.com/r/cptactionhank/atlassian-jira
  * Github: https://github.com/cptactionhank/docker-atlassian-jira
  * Docs: https://cptactionhank.github.io/docker-atlassian-jira

Atlassian JIRA Software wrapped in a Docker image
* Image: jarfil/atlassian-jira-software-grsec
  * atlassian-jira-software-grsec.image
* Base: cptactionhank/atlassian-jira-software
  * Docker: https://hub.docker.com/r/cptactionhank/atlassian-jira-software
  * Github: https://github.com/cptactionhank/docker-atlassian-jira-software
  * Docs: https://cptactionhank.github.io/docker-atlassian-jira-software

Atlassian JIRA Service Desk wrapped in a Docker image
* Image: jarfil/atlassian-jira-service-desk-grsec
  * atlassian-jira-service-desk-grsec.image
* Base: cptactionhank/atlassian-jira
  * Docker: https://hub.docker.com/r/cptactionhank/atlassian-jira-service-desk
  * Github: https://github.com/cptactionhank/docker-atlassian-jira-service-desk
  * Docs: https://cptactionhank.github.io/docker-atlassian-jira-service-desk
