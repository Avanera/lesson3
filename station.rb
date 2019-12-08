class Station
  attr_reader :trains, :station_name

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



  # Может возвращать список поездов на станции по типу 
  #(см. ниже): кол-во грузовых, пассажирских
end
