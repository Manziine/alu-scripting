#!/usr/bin/env ruby
# Script that matches strings starting with 'h', ending with 'n', and having exactly one character in between

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

input = ARGV[0]
regex = /^h.n$/

puts input if input.match(regex)
