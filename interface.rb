require "gosu"
require_relative 'user'

class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "ATM"
		@font = Gosu::Font.new(20)
	end

	def update

	end

	def draw
		@font.draw("Please enter pin",10,10,0,1.0,1.0,0xff_ffffff)
		draw_quad(0,0,0xff_0000ff,640,0,0xff_0000ff,640,480,0xff_00ffff,0,480,0xff_00ffff,0)
		draw_quad(256,215,0xff_999999,384,215,0xff_999999,384,265,0xff_999999,256,265,0xff_999999,0)
	end

	def button_down id
		close if id == Gosu::KbEscape
	end

end

window = GameWindow.new
window.show