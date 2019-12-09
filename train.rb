class Train
  attr_accessor :speed
  attr_reader :current_station, :previous_station, :next_station, :route, :number, :type

  def initialize(number, type, cars_quant)
    @number = number
    @type = type
    @cars_quant = cars_quant

  end

  def go(speed)
    @speed = speed
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
    @cars_quant = @cars_quant + 1 if @speed == 0
  end

  def delete_cars
    @cars_quant = @cars_quant - 1 if @speed == 0
  end

  def take_route(route)
    @route = route
    @current_station = @route.depart
    puts "The train #{@train_number} is currently in #{@current_station.name}."
    @route.depart.receive_train(self)
  end

  def next_station
    @current_station.send_train(self)
    i = @route.stations.index(@current_station)
    @current_station = @route.stations[i + 1]
    @route.stations[i + 1].receive_train(self)
    puts "The train #{@train_number} is currently in #{@current_station.name}."
  end

  def prev_station
    @current_station.send_train(self)
    i = @route.stations.index(@current_station)
    @current_station = @route.stations[i - 1]
    @route.stations[i - 1].receive_train(self)
    puts "The train #{@train_number} is currently in #{@current_station.name}."
  end

end



