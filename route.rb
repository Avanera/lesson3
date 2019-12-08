class Route
  attr_reader :stations, :depart, :arrive

  def initialize(depart, arrive)
    @depart = depart
    @arrive = arrive
    @stations = [@depart, @arrive]
  end

  def add_station(station)
    @stations.pop()
    @stations << station
    @stations << @arrive
  end

  def delete_station(station)
    @stations.delete(station)
  end

  def show_stations
    @stations.each do |station|
      puts "Stations list: #{station.station_name}."
    end
  end
end
    




