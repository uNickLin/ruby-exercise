class Mycar

	attr_accessor :color # 因為color並不直接為class Mycar底下的變數，必須透過initialize(color)來呼叫，但透過attr_accessor可直接呼叫底下的color並修改參數
	attr_reader :year    # 與attr_accessor不同的是，reader僅能呼叫不同層級下的變數，但無法賦予新的參數

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

car = Mycar.new('1987', 'TOYOTA','Navy') #新增物件：year = '1987', modle = 'TOYOTA', color = 'Navy'

car.color = "black" # 因color為attr_accessor，可直接修改參數為‘black'
puts car.color
puts car.year


