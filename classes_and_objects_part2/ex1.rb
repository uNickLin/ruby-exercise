class Mycar

	attr_accessor :color
	attr_reader :year

	def self.gas_mileage(gallons, miles)
		puts "#{miles/gallons} miles per gallon of gas."

	end		

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

	def spray_paint(color)
		self.color = color

	end
end

Mycar.gas_mileage(16,351)



