# Rack exercise with rack gem, Exercise7, Submitted by Anand Bapat
require 'rack'

# Get arguments if any (and store in a global variable for access in our method

$user_argument1=ARGV[0]

program_name=$0
USAGE=program_name + " <user-string>\n"

# Validate arguments
if ARGV.size == 0
  puts USAGE
  exit
end

def my_method(env)
  [200, {}, ["Commend line argument you typed was: " + $user_argument1]]
end

# Listens on http://localhost:8500
my_port=8500
Rack::Handler::WEBrick.run method(:my_method), :Port => my_port


