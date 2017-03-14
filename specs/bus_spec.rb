require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("John", 22)
    @bus_stop = BusStop.new("stop1")

  end

  def test_bus_works
    assert_equal(22, @bus.route_number)
  end

  def test_drive
    assert_equal("brum brum", @bus.drive)
  end

  def test_how_many_passengers
    assert_equal(0, @bus.how_many_passengers)
  end

  def test_pick_up_passengers
    @bus.pick_up(@person1)
    assert_equal(1, @bus.how_many_passengers)
  end

  def test_drop_off_passengers
    @bus.pick_up(@person1)
    @bus.drop_off(@person1)
    assert_equal(0, @bus.how_many_passengers)
  end

  def test_empty
    @bus.pick_up(@person1)
    @bus.empty()
    assert_equal(0, @bus.how_many_passengers)
  end

  def test_pick_up_from_stop
    @bus_stop.add_person(@person1)
    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(1, @bus.how_many_passengers)
    assert_equal(0, @bus_stop.queue.length)
  end

end