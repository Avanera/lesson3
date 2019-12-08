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
    puts @speed
  end

  def show_cars_quant
    puts @cars_quant
  end

  def add_cars
    @cars_quant = @cars_quant + 1 if @speed == 0
  end

  def delete_cars
    @cars_quant = @cars_quant - 1 if @speed == 0
  end

  def take_route(route)
    @current_station = @depart
    @current_station.add_train(self)
  end

  def move(where)
    @current_station.send_train(self)


    @stations.each.with_index(1) do |station, index|
      @forward = @stations[index + 1]
      @back = @stations[index - 1]
    end
    if where == "forward"
      @location = @forward 
      @station.trains.delete(@number)
      @stations[index + 1].trains << @number
    elsif where == "back"
    @location = @back
    @station.trains.delete(@number)
    @stations[index - 1].trains << @number
    else puts "Error"
    end
  end
end



