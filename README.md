## Micronaut 4.8.2 Flyway Issue - Create index Concurrently 

This is a common issue when upgrading, and the usual way to solve it is discussed here: 

https://documentation.red-gate.com/fd/config-files-parameter-277578859.html

And, this fix works as exemplified by the flyway scripts V1.00 and V1.01.   If you remove the: 

```
  postgresql:
    transactional.lock: false
```
from the `application.yml`, it will fail to run.   However, even with this setting, it will fail on V1.02 and V1.03 with a partitioned table. 

