# 0x10 HTTPS SSL

## Description
This directory contains tasks related to HTTPS and SSL (Secure Sockets Layer) as part of the ALX Africa program. These tasks include configuring domain names, setting up SSL termination with HAProxy, and redirecting HTTP traffic to HTTPS.

## Table of Contents
- 0-world_wide_web
- 1-haproxy_ssl_termination
- 100-redirect_http_to_https

## 0-world_wide_web
This task involves configuring your domain zone so that the subdomain `www` points to your load-balancer IP.

- **File:** `0-world_wide_web`

## 1-haproxy_ssl_termination
This task involves setting up SSL termination on HAProxy, which means HAProxy will handle encrypted traffic, decrypt it, and pass it on to its destination.

- **File:** `1-haproxy_ssl_termination`

## 100-redirect_http_to_https
This task involves configuring HAProxy to automatically redirect HTTP traffic to HTTPS, ensuring all traffic is encrypted.

- **File:** `100-redirect_http_to_https`
