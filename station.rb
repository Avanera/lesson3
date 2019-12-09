class Station
  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def receive_train(train)
    @trains << train
  end

  def send_train(train)
    @trains.delete(train)
  end

  def show_trains(type)
    @trains.each do |train|
      puts "Passenger trains: #{train.number}" if train.type == "Passenger" && type == train.type
      puts "Freight trains: #{train.number}" if train.type == "Freight" && type == train.type
    end
  end

  # Может возвращать список поездов на станции по типу 
  #(см. ниже): кол-во грузовых, пассажирских
end
