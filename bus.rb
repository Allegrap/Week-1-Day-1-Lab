class Bus

attr_reader :route_number, :destination

def initialize(route_number, destination)
  @route_number = route_number
  @destination = destination
  @passengers = []
end

def route_number
  return @route_number
end

def drive
  return "brum brum"
end

def how_many_passengers
  return @passengers.length
end

def pick_up(passenger)
  @passengers << passenger
  return @passengers.length
end

def drop_off(passenger)
  @passengers -= [passenger]
  return @passengers
end

def empty
  @passengers = []
end

def pick_up_from_stop(bus_stop)
  @passengers += bus_stop.queue
  bus_stop.empty
end

end