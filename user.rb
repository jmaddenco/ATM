class User

	attr_accessor :user
		@data = File.read('users.txt')
		@users = @data.spli("\n").map {|line| line.split(',') }


	def info
		print "#{@users}"
	end

	def find_user pin
		@users.index {|user| user[1].eql?(pin)}
	end

end
