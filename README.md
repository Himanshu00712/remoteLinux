# remoteLinux

- `login.sh` = This file will be used to connect the remote linux server and run the remote script
- `remoteBuildPriority.sh` = This file is responsible for the following steps:
    - fetch the arguments
    - kill the java process
    - Change the config key-value 
    - Save file and create bakup file
    - Run another script(process)
    - Print the logs
