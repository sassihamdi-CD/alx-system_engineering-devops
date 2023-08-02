# 0x06. Regular Expression

![DevOps](https://img.shields.io/badge/DevOps-Regular%20Expression-blue)
![Status](https://img.shields.io/badge/Status-Ongoing-brightgreen)
## Project Overview

This repository contains the source code and solutions for the "0x06. Regular Expression" project, which is part of the ALX DevOps curriculum.


### Concepts

In this project, we focus on the concept of Regular Expression.

### Background Context

In this project, you will build regular expressions using Oniguruma, a regular expression library used by Ruby by default. Please note that other regular expression libraries may have different properties.

To help you get started, here is the Ruby code you should use. Replace the `regexp` part with your custom regular expression code:

```ruby
sassihamdi@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sassihamdi@ubuntu$
sassihamdi@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sassihamdi@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sassihamdi@ubuntu$ ./example.rb 127.0.0.a
