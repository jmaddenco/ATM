require_relative 'user'

print "Enter PIN nw: "
pin = $stdin.gets.chomp
user = User.new
prin users.find_user(pin)