#!/usr/bin/env ruby
# This script strictly matches strings with exactly 1-6 't's between 'hb' and 'n'

if ARGV.empty?
  puts "Please provide an input string as an argument."
  exit
end

input_string = ARGV[0]
# Strict regex that won't match 7+ 't's
regex = /\A hbt{1,6}n \z/x

if input_string.match(regex)
  puts input_string
else
  puts ""
end
