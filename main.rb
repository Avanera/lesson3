load './station.rb'
station1 = Station.new("Moscow")
station2 = Station.new("Saint-Petersburg")
station3 = Station.new("Krasnoyarsk")
station4 = Station.new("Novosibirsk")
station5 = Station.new("Vladivostok")
station6 = Station.new("Nalchik")

load './route.rb'
route1 = Route.new(station1, station6)
route1.add_station(station3)
route1.add_station(station4)
route1.add_station(station5)

route1.show_stations

route1.delete_station(station4)

route1.show_stations

load './train.rb'
train1 = Train.new(123, "Passenger", 3)
train1.go(50)
train1.stop
train1.show_speed
train1.show_cars_quant
train1.add_cars
train1.delete_cars

train1.take_route(route1)

train1.forward

train1.backward

train2 = Train.new(345, "Freight", 3)
train2.take_route(route1)

station1.show_trains("Passenger")
station1.show_trains("Freight")
station2.show_trains("Passenger")
