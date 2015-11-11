$stdout.sync = true

class User
	$data = File.read('users.txt')
	$users = $data.split("\n").map { |line| line.split(',') }

	def initialize pin
		@current_user = $users.assoc(pin)
		@name = @current_user[1]
		@balance = @current_user[2].to_i
	end

	def hello
		print "Hello, #{@name}"
	end

	def deposit
		check_balance
		puts "How much to deposit?"
		amount = gets.chomp.to_i
		@balance += amount
		check_balance
	end

	def withdrawl
		check_balance
		puts "How much to withdrawl?"
		amount = gets.chomp.to_i
		@balance -= amount
		check_balance
	end

	def quick_cash
		check_balance
		print """
How much to withdrawl?
1 $20
2 $40
3 $60
4 $80
5 $100
"""
		case gets.chomp.to_i
		when 1
			@balance -= 20
		when 2
			@balance -= 40
		when 3
			@balance -= 60
		when 4
			@balance -= 80
		when 5
			@balance -= 100
		end
		check_balance
	end

	def check_balance
		puts "Current balance: $#{@balance}"
	end

end