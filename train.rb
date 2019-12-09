class Train
  attr_accessor :speed
  attr_reader :current_station, :route, :number, :type

  def initialize(number, type, cars_quant)
    @number = number
    @type = type
    @cars_quant = cars_quant
    @speed = 0
  end

  def go(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def show_speed
    puts "Current speed is #{@speed}."
  end

  def show_cars_quant
    puts "Cars quantity is #{@cars_quant}."
  end

  def add_cars
    @cars_quant += 1 if @speed == 0
  end

  def delete_cars
    @cars_quant += @cars_quant - 1 if @speed == 0 && @cars_quant >= 1
  end

  def take_route(route)
    @route = route 
    # чтобы def next_station работал, надо сохранить route и создать для него attr_reader =>  route = route1
    # внутри поезда мы же не знаем о каком маршруте идет речь
    @current_station = @route.depart
    puts "The train #{@train_number} is currently in #{@current_station.name}."
    @route.depart.receive_train(self)
  end

  def next_station
    i = @route.stations.index(@current_station)
    @route.stations[i + 1] # метод возвращает значение, лишнюю переменную не нужно создавать.  
  end

  def prev_station
    i = @route.stations.index(@current_station)
    @route.stations[i - 1]    
  end

  def forward
    if @current_station != @arrive
    @current_station.send_train(self)
    next_station.receive_train(self) #тут вызываем метод next_station = self.next_station
    @current_station = next_station
    puts "The train #{@train_number} is currently in #{@current_station.name}."
    end
  end

  def backward
    if @current_station != @depart
    @current_station.send_train(self)
    prev_station.receive_train(self)
    @current_station = prev_station
    puts "The train #{@train_number} is currently in #{@current_station.name}."
    end
  end
end



