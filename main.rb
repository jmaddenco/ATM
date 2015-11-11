$stdout.sync = true
require_relative 'user'

print "Enter PIN now: "
pin = gets.chomp

user = User.new(pin)
user.hello


print """
What would you like to do today?
1 Deposit
2 Withdrawl
3 Quick Cash
4 Check Balance
5 Quit
"""
case $stdin.gets.chomp.to_i
when 1
	user.deposit
when 2
	user.withdrawl
when 3
	user.quick_cash
when 4
	user.check_balance
when 5
	exit
end
print "Have a nice day sir or madam."