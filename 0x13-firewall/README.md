# 0x13 Firewall

## Description
This directory contains tasks related to configuring and managing firewall settings using `ufw` (Uncomplicated Firewall) as part of the ALX Africa program. These tasks include setting up rules to block incoming traffic while allowing specific TCP ports, and configuring port forwarding to redirect traffic from one port to another.

## Table of Contents
- 0-block_all_incoming_traffic_but
- 100-port_forwarding

## 0-block_all_incoming_traffic_but
This script configures `ufw` on a server to block all incoming traffic, except for TCP ports 22 (SSH), 443 (HTTPS), and 80 (HTTP).

- **File:** `0-block_all_incoming_traffic_but`

## 100-port_forwarding
This script modifies the `ufw` configuration file to enable port forwarding on `web-01`, redirecting TCP traffic from port 8080 to port 80.

- **File:** `100-port_forwarding`
