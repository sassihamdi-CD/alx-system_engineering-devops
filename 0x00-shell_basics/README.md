## 0x00-shell_basics

This directory covers the fundamental commands and scripting techniques in Unix-like operating systems.

### Files
- **0-current_working_directory**: A script that prints the absolute path name of the current working directory.
- **1-listit**: A script that displays the contents of your current directory.
- **2-bring_me_home**: A script that changes the working directory to the user's home directory.
- **3-listfiles**: A script that displays current directory contents in a long format.
- **4-listmorefiles**: A script that displays current directory contents, including hidden files (starting with `.`).
- **5-listfilesdigitonly**: A script that displays current directory contents, with user and group IDs displayed numerically.
- **6-firstdirectory**: A script that creates a directory named `my_first_directory` in the `/tmp/` directory.
- **7-movethatfile**: A script that moves the file `betty` from `/tmp/` to `/tmp/my_first_directory/`.
- **8-firstdelete**: A script that deletes the file `betty` in `/tmp/my_first_directory/`.
- **9-firstdirdeletion**: A script that deletes the directory `my_first_directory` that is in the `/tmp` directory.
- **10-back**: A script that changes the working directory to the previous one.
- **11-lists**: A script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the `/boot` directory (in this order), in long format.
- **12-file_type**: A script that prints the type of the file named `iamafile`. The file `iamafile` will be in the `/tmp` directory when we will run your script.
- **13-symbolic_link**: A script that creates a symbolic link to `/bin/ls`, named `__ls__`. The symbolic link should be created in the current working directory.
- **14-copy_html**: A script that copies all the HTML files from the current working directory to the parent of the working directory, but only copies files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.
