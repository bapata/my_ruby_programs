# Submitter: Anand Bapat
# program to count number of 'the' word in specified HTML file
# Specified HTML file is as below (given_url)

require 'net/http'

# Use the specified URL
given_url = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'
uri = URI(given_url)

# No get contents into a string 
string_to_process = Net::HTTP.get(uri) 
#puts string_to_process
the_count = string_to_process.scan(/\s+the\s+/).count

puts "Number of \'the\' in #{given_url} is"
puts the_count

