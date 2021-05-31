# remoteLinux

login.sh = This file will use to connect the remote linux server and run the remote script
remoteBuildPriority.sh = This file is responsible for folloing steps:
                         (1) fetch the arguments
                         (2) kill the java process
                         (3) Change the config key-value 
                         (4) Save file and create bakup file
                         (5) Run another script(process)
                         (6) Print the logs
