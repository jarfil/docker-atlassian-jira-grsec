# docker-atlassian-jira-grsec
Based on cptactionhank/atlassian-jira, to add grsec support

```
OpenJDK 64-Bit Server VM warning: INFO: os::commit_memory(0x00000340f817d000, 2555904, 1) failed; error='Operation not permitted' (errno=1)
#
# There is insufficient memory for the Java Runtime Environment to continue.
# Native memory allocation (mmap) failed to map 2555904 bytes for committing reserved memory.
# An error report file with more information is saved as:
# /var/atlassian/jira/hs_err_pid107.log
```

https://stackoverflow.com/questions/27262629/jvm-cant-map-reserved-memory-when-running-in-docker-container
