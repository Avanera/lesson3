class Train
  attr_accessor :speed
  attr_reader :current_station, :previous_station, :next_station, :location

  def initialize(number, type, cars_quant)
    @train_number = number
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
    @current_station = route.depart
    puts "The train #{@train_number} is currently in #{@current_station.station_name}."
    route.depart.receive_train(self)
  end

  def move_forward
    @current_station.send_train(self)

    route.stations.each.with_index(1) do |station, index|

    @current_station = route.stations[index + 1]
    route.stations[index + 1].receive_train(self)
    end
  end
end



