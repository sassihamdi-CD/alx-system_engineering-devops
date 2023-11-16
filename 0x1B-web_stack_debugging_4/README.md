# Solutions - 0x1B-web_stack_debugging_4

## Task 0: Sky is the limit, let's bring that limit higher

In this web stack debugging task, we are testing how well our web server setup featuring Nginx is doing under pressure, and it turns out it’s not doing well: we are getting a huge amount of failed requests.

### Benchmarking Details:

- **Tool Used:** ApacheBench (Version 2.3)
- **Requests:** 2000 requests to the server with 100 requests at a time
- **Initial Failed Requests:** 943

### Debugging Steps:

1. Run ApacheBench for benchmarking:
    ```bash
    $ ab -c 100 -n 2000 localhost/
    ```

2. Observations:
   - Server Software: nginx/1.4.6
   - Server Hostname: localhost
   - Server Port: 80
   - Document Path: /
   - Document Length: 201 bytes
   - Concurrency Level: 100
   - Time taken for tests: 0.353 seconds
   - Failed requests: 943

3. Puppet Apply to fix the stack:
    ```bash
    $ puppet apply 0-the_sky_is_the_limit_not.pp
    ```

4. Re-run ApacheBench after fixing:
    ```bash
    $ ab -c 100 -n 2000 localhost/
    ```

5. Observations after Fix:
   - Server Software: nginx/1.4.6
   - Server Hostname: localhost
   - Server Port: 80
   - Document Path: /
   - Document Length: 612 bytes
   - Concurrency Level: 100
   - Time taken for tests: 0.301 seconds
   - Failed requests: 0

## Task 1: User limit

Change the OS configuration so that it is possible to log in with the holberton user and open a file without any error message.

### Debugging Steps:

1. Attempt to login as holberton user:
    ```bash
    $ su - holberton
    ```

2. Observe error messages indicating "Too many open files."

3. Run Puppet Apply to change OS configuration:
    ```bash
    $ puppet apply 1-user_limit.pp
    ```

4. Attempt to login as holberton user again.

5. Verify that the issue is resolved.

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/sassihamdi-CD/alx-system_engineering-devops)
- **Directory:** 0x1B-web_stack_debugging_4
- **Files:**
  - [0-the_sky_is_the_limit_not.pp](https://github.com/sassihamdi-CD/alx-system_engineering-devops/0x1B-web_stack_debugging_4/0-the_sky_is_the_limit_not.pp)
  - [1-user_limit.pp](https://github.com/sassihamdi-CD/alx-system_engineering-devops/0x1B-web_stack_debugging_4/1-user_limit.pp)

