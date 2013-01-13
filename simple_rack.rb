# Exercise_6
# simple_rack.rb, Submitted by Anand Bapat

# Get arguments if any
user_argument1=ARGV[0]
program_name=$0

USAGE=program_name + " <user-string>\n"

# Argument
if ARGV.size == 0
  puts USAGE
  exit
end

my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, [user_argument1]]}
puts my_rack_proc.call({})
