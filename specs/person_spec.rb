require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("John", 22)
    @person2 = Person.new("Allegra", 34)
    @person3 = Person.new("Andrew", 24)
  end


  def test_bus_works
    assert_equal(22, @bus.route_number)
  end

  def test_drive
    assert_equal("brum brum", @bus.drive)
  end


end