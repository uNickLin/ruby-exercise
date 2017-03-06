class Mycar
	def initialize(year, model, color) #宣告一個包含四個參數的method，其中year, model, color可由外部改變
		@year = year
		@model = model
		@color = color
		@current_speed = 0

	end

	def speed_up(num) #此為加速method, 呼叫此method來改變上方的參數＠current_speed + num
		@current_speed += num
		puts "You push gas and accelerate #{num} mph."

	end 

	def brake(num) #此為加速method, 呼叫此method來改變上方的參數＠current_speed - num
		@current_speed -= num
		puts "You push the break and decelerate #{num} mph."
		
	end

	def current_speed #印出目前@current_spped的數值為何
		puts "Your current speed is #{@current_speed} mph."

	end

	def shut_down #@將current_speed歸零
		@current_speed = 0
		puts "You push the brake, now you stop !"
		
	end

end

car = Mycar.new('1987', 'TOYOTA','Navy')
car.current_speed #最初參數為line:6的0
car.speed_up(30)  #透過speed_up method 將@cureent_speed + 30 = 0 + 30 = 30
car.current_speed #再印出目前@current_speed = 30
car.brake(22)     #透過brake method將@current_speed - 22 = 30 - 22 = 8
car.current_speed #印出目前@current_speed = 8
car.speed_up(27)  #speed_up method 再將@current_speed + 27 = 8 + 27 = 35
car.current_speed #印出目前@current_speed = 35
car.shut_down     #將@current_speed透過shut_down method 歸零
car.current_speed #印出＠current_speed = 0




