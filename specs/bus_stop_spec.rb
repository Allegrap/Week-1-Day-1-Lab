require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("stop1")
    @passenger1 = Person.new("person1", 22)
  end

  def test_bus_name
    assert_equal("stop1", @bus_stop.name)
  end

  def test_add_person_to_queue
    @bus_stop.add_person(@passenger1)
    assert_equal(1, @bus_stop.queue.length)
  end

  def test_empty
    @bus_stop.add_person(@passenger1)
    @bus_stop.empty()
    assert_equal(0, @bus_stop.queue.length)
  end

end