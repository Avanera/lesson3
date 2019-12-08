class Route
  attr_reader :stations, :depart, :arrive

  def initialize(depart, arrive)
    @depart = depart
    @arrive = arrive
    @station1 = Station.new(@depart)
    @station2 = Station.new(@arrive)
    @stations = [@station1.station_name, @station2.station_name]
  end

  def add_station(station)
    @stations.pop()
    @station = Station.new(station)
    @stations << @station.station_name
    @stations << @station2.station_name
  end

  def delete_station(station)
    @stations.delete(station)
  end

  def show_stations
    puts @stations
  end
end
    




