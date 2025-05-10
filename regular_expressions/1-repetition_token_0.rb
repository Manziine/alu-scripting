#!/usr/bin/env ruby
# This script accepts one argument and passes it to a regular expression matching method
# The regular expression must match strings starting with 'hb', followed by one or more 't's, and ending with 'n'

if ARGV.empty?
  puts "Please provide an input string as an argument."
  exit
end

input_string = ARGV[0]
regex = /^hbt+n$/

if input_string.match(regex)
  puts input_string
else
  puts ""
end
