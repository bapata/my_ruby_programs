# Submitter: Anand Bapat, netouri_exercise_5.rb
# program to count number of 'the' word in specified HTML file
# Specified HTML file is as below (given_url)

require 'open-uri'

# Use the specified URL
given_url = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'
f = open(given_url)

# Now get contents into a string 
string_to_process = f.readlines.join

# Get 'the' count
the_count = string_to_process.scan(/\s+the\s+/).count

#  Report findings ..
puts "Number of \'the\' in #{given_url} is"
puts the_count

