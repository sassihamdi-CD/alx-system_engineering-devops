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
## 0x04-loops_conditions_and_parsing

This directory covers loops, conditions, and parsing in shell scripts.

### Files
- **0-RSA_public_key.pub**: A file containing an RSA public key.
- **1-for_best_school**: A script that displays `Best School` 10 times using a `for` loop.
- **2-while_best_school**: A script that displays `Best School` 10 times using a `while` loop.
- **3-until_best_school**: A script that displays `Best School` 10 times using an `until` loop.
- **4-if_9_say_hi**: A script that displays `Best School` 10 times, but for the 9th iteration, it displays `Hi` instead.
- **5-4_bad_luck_8_is_your_chance**: A script that loops from 1 to 10 and displays `bad luck` for the 4th iteration, `good luck` for the 8th iteration, and `Best School` for the other iterations.
- **6-superstitious_numbers**: A script that displays numbers from 1 to 20, but for multiples of 4, it displays `bad luck`, for multiples of 8, it displays `good luck`, and for other numbers, it displays the number.
- **7-clock**: A script that displays the time for 12 hours and 59 minutes, starting from 00:00.
- **8-for_ls**: A script that displays the content of the current directory in a `for` loop.
- **9-to_file_or_not_to_file**: A script that gives information about the `school` file.
- **10-fizzbuzz**: A script that displays numbers from 1 to 100, but for multiples of 3, it displays `Fizz`, for multiples of 5, it displays `Buzz`, and for multiples of both 3 and 5, it displays `FizzBuzz`.
