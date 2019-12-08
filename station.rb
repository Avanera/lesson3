class Station
  attr_reader :trains, :station_name, :train_type

  def initialize(name)
    @station_name = name
    @trains = []
  end

  def receive_train(train)
    @trains << train
  end

  def send_train(train)
    @trains.delete(train)
  end

  def show_trains
    @trains.each do |train|
      puts "Passenger trains: #{train}" if train.train_type == "Passenger"
      puts "Freight trains: #{train}" if train.train_type == "Freight"
    end
  end

  # Может возвращать список поездов на станции по типу 
  #(см. ниже): кол-во грузовых, пассажирских
end
