# Project: Load Balancer Configuration

## Table of Contents
1. [Project Description](#project-description)
2. [Concepts](#concepts)
3. [Background Context](#background-context)
4. [Resources](#resources)
5. [Requirements](#requirements)
6. [Tasks](#tasks)
   - [Task 1: Double the Number of Webservers](#task-1-double-the-number-of-webservers)
   - [Task 2: Install Your Load Balancer](#task-2-install-your-load-balancer)

## Project Description
This project focuses on configuring a load balancer to improve the redundancy and reliability of web servers. By doubling the number of web servers and implementing a load balancer, we aim to enhance our infrastructure's capacity to handle increased traffic and ensure failover resilience.

## Concepts
The key concepts explored in this project include:
- Load balancer
- Web stack debugging

## Background Context
As part of this project, you have been provided with two additional servers: `gc-[STUDENT_ID]-web-02-XXXXXXXXXX` and `gc-[STUDENT_ID]-lb-01-XXXXXXXXXX`. These servers will play a crucial role in building redundancy into our web stack.

My tasks involve writing Bash scripts to automate server configurations, ensuring that they meet specific requirements.

## Resources
To successfully complete this project, it's essential to refer to the following resources:
- Introduction to load-balancing and HAproxy
- Understanding HTTP headers
- Debian/Ubuntu HAProxy packages

## Requirements
### General
- Editors Allowed: vi, vim, emacs
- Compatibility: All your files will be interpreted on Ubuntu 16.04 LTS
- Line Endings: Ensure that all your files end with a new line
- README: Create a `README.md` file at the project's root folder
- Executable Scripts: Make all your Bash script files executable
- Shellcheck: Your Bash scripts should pass Shellcheck (version 0.3.7) without any errors
- Script Header: The first line of all your Bash scripts should begin with `#!/usr/bin/env bash`
- Script Comments: Include a comment as the second line of your Bash scripts, explaining their purpose

### Servers
- Configuration: Configure servers to match specific hostname requirements (e.g., `[STUDENT_ID]-web-01`, `[STUDENT_ID]-web-02`)
- Server OS: Use Ubuntu 16.04 LTS for server configuration

## Tasks

### Task 1: Double the Number of Webservers
In this task, your goal is to configure `web-02` to be identical to `web-01`. You can leverage your Bash script from a previous web server project to automate this process. Additionally, you'll add a custom Nginx response header to track which web server is handling HTTP requests.

#### Requirements:
- Configure Nginx to include a custom header in its HTTP responses on both `web-01` and `web-02`
- Custom Header: The custom HTTP header should be named `X-Served-By`, with its value being the hostname of the Nginx server
- Script: Write a Bash script (`0-custom_http_response_header`) to configure a new Ubuntu machine to meet these requirements
- Shellcheck Exception: Ignore Shellcheck rule SC2154

### Task 2: Install Your Load Balancer
In this task, you'll install and configure HAproxy on your `lb-01` server to distribute traffic to `web-01` and `web-02` using a round-robin algorithm. Ensure that HAproxy can be managed via an init script.

#### Requirements:
- Configure HAproxy to distribute traffic to `web-01` and `web-02` using a round-robin algorithm
- Init Script: Ensure that HAproxy can be managed via an init script
