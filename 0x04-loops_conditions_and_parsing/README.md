# 0x04. Loops, Conditions, and Parsing

## DevOps - Shell - Bash Scripting

## Background Context

In this project, you will learn about various concepts related to Bash scripting, including loops, conditions, and parsing.

## Resources

Read or watch:
- Loops sample
- Variable assignment and arithmetic
- Comparison operators
- File test operators
- Make your scripts portable
- man or help: env, cut, for, while, until, if

## Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### General
- How to create SSH keys
- What is the advantage of using `#!/usr/bin/env bash` over `#!/bin/bash`
- How to use while, until, and for loops
- How to use if, else, elif, and case condition statements
- How to use the cut command
- What are files and other comparison operators, and how to use them

## Requirements

### General
- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 20.04 LTS
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- You are not allowed to use awk
- Your Bash script must pass Shellcheck (version 0.7.0) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

## Copyright - Plagiarism

You are tasked to come up with solutions for the tasks below yourself to meet the above learning objectives.
You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
You are not allowed to publish any content of this project.
Any form of plagiarism is strictly forbidden and will result in removal from the program.

## Tasks

### 0. Create a SSH RSA key pair (mandatory)

Read for this task:

Linux and Mac OS users
Windows users
man: ssh-keygen

You will soon have to manage your own servers hosted on remote data centers. We need to set them up with your RSA public key so that you can access them via SSH.

Create an RSA key pair.

Requirements:

- Share your public key in your answer file `0-RSA_public_key.pub`
- Fill the SSH public key field of your intranet profile with the public key you just generated
- Keep the private key to yourself in a secure location, you will use it later to connect to your servers using SSH. Some storing ideas are Dropbox, Google Drive, password manager, USB key. Failing to do so will prevent you from accessing your servers, which will prevent you from doing your projects
- If you decide to add a passphrase to your key, make sure to save this passphrase in a secure location, you will not be able to use your keys without the passphrase

SSH and RSA keys will be covered in depth in a later project.

Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x04-loops_conditions_and_parsing
File: 0-RSA_public_key.pub

### 1. For Best School loop (mandatory)

Write a Bash script that displays "Best School" 10 times.

Requirement:

- You must use the for loop (while and until are forbidden)

Example:
```bash
sassihamdi@ubuntu$ head -n 2 1-for_best_school 
#!/usr/bin/env bash
# This script is displaying "Best School" 10 times
sylvain@ubuntu$ ./1-for_best_school 
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
sassihamdi@ubuntu$ 

