#!/usr/bin/env ruby
# This script accepts one argument and passes it to a regular expression matching method
# The regular expression matches strings starting with hb, followed by one or more t's or an optional o, ending with n

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

string = ARGV[0]
regex = /^hb(t+|o?)n$/

if string.match(regex)
  puts string
else
  puts ""
end
