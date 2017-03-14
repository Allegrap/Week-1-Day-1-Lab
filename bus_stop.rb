class BusStop

attr_reader :name, :queue

def initialize(name)
  @name = name
  @queue = []
end

def add_person(passenger)
  @queue << passenger
  return @queue.length
end

def empty
  @queue = []
end

end