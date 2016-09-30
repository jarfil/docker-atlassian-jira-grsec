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

### base images

atlassian-jira-grsec.image
* Atlassian JIRA Core wrapped in a Docker image
* https://github.com/cptactionhank/docker-atlassian-jira
* https://cptactionhank.github.io/docker-atlassian-jira

atlassian-jira-software-grsec.image
* Atlassian JIRA Software wrapped in a Docker image
* https://github.com/cptactionhank/docker-atlassian-jira-software
* https://cptactionhank.github.io/docker-atlassian-jira-software

atlassian-jira-service-desk-grsec.image
* Atlassian JIRA Service Desk wrapped in a Docker image
* https://github.com/cptactionhank/docker-atlassian-jira-service-desk
* https://cptactionhank.github.io/docker-atlassian-jira-service-desk
