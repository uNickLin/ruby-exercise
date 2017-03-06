class Mycar
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

end

car = Mycar.new('1987', 'TOYOTA','Navy')
car.current_speed
car.speed_up(30)
car.current_speed
car.brake(22)
car.current_speed
car.speed_up(27)
car.current_speed
car.shut_down
car.current_speed




