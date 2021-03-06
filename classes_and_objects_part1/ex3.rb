class Mycar

	attr_accessor :color
	attr_reader :year

	def initialize(year, model, color)
		@year = year
		@model = model
		@color = color
		@current_speed = 0

	end

	def speed_up(num)
		@current_speed += num
		puts "You push gas and accelerate #{num} mph."

	end

	def brake(num)
		@current_speed -= num
		puts "You push the break and decelerate #{num} mph."
		
	end

	def current_speed
		puts "Your current speed is #{@current_speed} mph."

	end

	def shut_down
		@current_speed = 0
		puts "You push the brake, now you stop !"
		
	end

	def spray_paint(color) #除ex2直接改變參數的方法外，可由另外定義的method來改變原initialize的變數，並呼叫字串來提示使用者
		self.color = color
		puts "Your new #{color} paint job looks great !"

	end
end

car = Mycar.new('1987', 'TOYOTA','Navy')
car.color = 'black'
puts car.color
puts car.year
car.spray_paint('grey')
puts car.color



