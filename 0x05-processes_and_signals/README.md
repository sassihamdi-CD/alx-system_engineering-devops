# 0x05. Processes and signals

## Table of Contents
* [Description](#description)
* [Requirements](#requirements)
* [Tasks](#tasks)
   - [0. What is my PID](#0-what-is-my-pid)
   - [1. List your processes](#1-list-your-processes)
   - [2. Show your Bash PID](#2-show-your-bash-pid)
   - [3. Show your Bash PID made easy](#3-show-your-bash-pid-made-easy)
   - [4. To infinity and beyond](#4-to-infinity-and-beyond)
   - [5. Don't stop me now!](#5-dont-stop-me-now)
   - [6. Stop me if you can](#6-stop-me-if-you-can)
   - [7. Highlander](#7-highlander)
   - [8. Beheaded process](#8-beheaded-process)

## Description
This project covers the basics of processes and signals in the Linux operating system. It aims to provide a deeper understanding of processes, PIDs (Process IDs), signals, and how to interact with processes in a bash environment.

## Requirements
* Allowed editors: vi, vim, emacs
* All files will be interpreted on Ubuntu 20.04 LTS
* All files should end with a new line
* A README.md file, at the root of the folder of the project, is mandatory
* All Bash script files must be executable
* Bash scripts must pass Shellcheck (version 0.7.0 via apt-get) without any error
* The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
* The second line of all Bash scripts should be a comment explaining what the script does

## Tasks

### 0. What is my PID
Write a Bash script that displays its own PID.

Example:
```bash
$ ./0-what-is-my-pid
4120
$
1. List your processes
Write a Bash script that displays a list of currently running processes.

Requirements:

Must show all processes, for all users, including those which might not have a TTY
Display in a user-oriented format
Show process hierarchy
Example:
$ ./1-list_your_processes | head -50
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         2  0.0  0.0      0     0 ?        S    Feb13   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [ksoftirqd/0]
root         4  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kworker/0:0]
root         5  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kworker/0:0H]
root         7  0.0  0.0      0     0 ?        S    Feb13   0:02  \_ [rcu_sched]
root         8  0.0  0.0      0     0 ?        S    Feb13   0:03  \_ [rcuos/0]
root         9  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [rcu_bh]
root        10  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [rcuob/0]
root        11  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [migration/0]
root        12  0.0  0.0      0     0 ?        S    Feb13   0:02  \_ [watchdog/0]
root        13  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [khelper]
root        14  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kdevtmpfs]
root        15  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [netns]
root        16  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [writeback]
root        17  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kintegrityd]
root        18  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [bioset]
root        19  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kworker/u3:0]
root        20  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kblockd]
root        21  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [ata_sff]
root        22  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [khubd]
root        23  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [md]
root        24  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [devfreq_wq]
root        25  0.0  0.0      0     0 ?        S    Feb13   0:41  \_ [kworker/0:1]
root        27  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [khungtaskd]
root        28  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kswapd0]
root        29  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [vmstat]
root        30  0.0  0.0      0     0 ?        SN   Feb13   0:00  \_ [ksmd]
root        31  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [fsnotify_mark]
root        32  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [ecryptfs-kthrea]
root        33  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [crypto]
root        45  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kthrotld]
root        46  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kworker/u2:1]
root        65  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [deferwq]
root        66  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [charger_manager]
root       108  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kpsmoused]
root       125  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [scsi_eh_0]
root       126  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kworker/u2:2]
root       172  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [jbd2/sda1-8]
root       173  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [ext4-rsv-conver]
root       409  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [iprt]
root       549  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kworker/u3:1]
root       808  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kauditd]
root       834  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [rpciod]
root       846  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [nfsiod]
root         1  0.0  0.4  33608  2168 ?        Ss   Feb13   0:00 /sbin/init
root       373  0.0  0.0  19472   408 ?        S    Feb13   0:00 upstart-udev-bridge --daemon
root       378  0.0  0.2  49904  1088 ?        Ss   Feb13   0:00 /lib/systemd/systemd-udevd --daemon
root       518  0.0  0.1  23416   644 ?        Ss   Feb13   0:00 rpcbind
statd      547  0.0  0.1  21536   852 ?        Ss   Feb13   0:00 rpc.statd -L
$ 
2. Show your Bash PID
Using your previous exercise command, write a Bash script that displays lines containing the "bash" word, thus allowing you to easily get the PID of your Bash process.

Requirements:

You cannot use pgrep
The third line of your script must be # shellcheck disable=SC2009 (for more info about ignoring shellcheck error here)
Example:
$ ./2-show_your_bash_pid
sylvain   4404  0.0  0.7  21432  4000 pts/0    Ss   03:32   0:00          \_ -bash
sylvain   4477  0.0  0.2  11120  1352 pts/0    S+   03:40   0:00              \_ bash ./2-show_your_bash_PID
sylvain   4479  0.0  0.1  10460   912 pts/0    S+   03:40   0:00                  \_ grep bash
$
3. Show your Bash PID made easy
Write a Bash script that displays the PID, along with the process name, of processes whose name contains the word "bash".

Requirements:

You cannot use ps
Example:
$ ./3-show_your_bash_pid_made_easy
4404 bash
4555 bash
$
4. To infinity and beyond
Write a Bash script that displays "To infinity and beyond" indefinitely.

Requirements:

In between each iteration of the loop, add a sleep 2
Example:

bash
Copy code
$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
^C
$
5. Don't stop me now!
We stopped our 4-to_infinity_and_beyond process using ctrl+c in the previous task, but there is actually another way to do this.

Write a Bash script that stops the 4-to_infinity_and_beyond process.

Requirements:

You must use kill
Example:

bash
Copy code
# Terminal #0
$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
$

# Terminal #1
$ ./5-dont_stop_me_now 
$
6. Stop me if you can
Write a Bash script that stops the 4-to_infinity_and_beyond process.

Requirements:

You cannot use kill or killall
Example:

bash
Copy code
# Terminal #0
$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
$

# Terminal #1
$ ./6-stop_me_if_you_can 
$ ./6-stop_me_if_you_can
$
7. Highlander
Write a Bash script that displays:

"To infinity and beyond" indefinitely
With a sleep 2 in between each iteration
"I am invincible!!!" when receiving a SIGTERM signal
Make a copy of your 6-stop_me_if_you_can script, name it 67-stop_me_if_you_can, that kills the 7-highlander process instead of the 4-to_infinity_and_beyond one.

Example:

bash
Copy code
# Terminal #0
$ ./7-highlander
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
I am invincible!!!
To infinity and beyond
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
^C
$

# Terminal #1
$ ./67-stop_me_if_you_can 
$ ./67-stop_me_if_you_can
$
8. Beheaded process
Write a Bash script that kills the process 7-highlander.

Example:

bash
Copy code
# Terminal #0
$ ./7-highlander 
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Killed
$

# Terminal #1
$ ./8-beheaded_process
$
These are the tasks for the "0x05. Processes and signals" DevOps project. Remember to write your scripts and test them to make sure they are working correctly.
$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
^C
$
5. Don't stop me now!
We stopped our 4-to_infinity_and_beyond process using ctrl+c in the previous task, but there is actually another way to do this.

Write a Bash script that stops the 4-to_infinity_and_beyond process.

Requirements:

You must use kill
Example:
# Terminal #0
$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
$

# Terminal #1
$ ./5-dont_stop_me_now 
$
6. Stop me if you can
Write a Bash script that stops the 4-to_infinity_and_beyond process.

Requirements:

You cannot use kill or killall
Example:
# Terminal #0
$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
$

# Terminal #1
$ ./6-stop_me_if_you_can 
$ ./6-stop_me_if_you_can
$
7. Highlander
Write a Bash script that displays:

"To infinity and beyond" indefinitely
With a sleep 2 in between each iteration
"I am invincible!!!" when receiving a SIGTERM signal
Make a copy of your 6-stop_me_if_you_can script, name it 67-stop_me_if_you_can, that kills the 7-highlander process instead of the 4-to_infinity_and_beyond one.

Example:
# Terminal #0
$ ./7-highlander
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
I am invincible!!!
To infinity and beyond
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
^C
$

# Terminal #1
$ ./67-stop_me_if_you_can 
$ ./67-stop_me_if_you_can
$
8. Beheaded process
Write a Bash script that kills the process 7-highlander.

Example:
# Terminal #0
$ ./7-highlander 
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Killed
$

# Terminal #1
$ ./8-beheaded_process
$
These are the tasks for the "0x05. Processes and signals" DevOps project. Remember to write your scripts and test them to make sure they are working correctly.
