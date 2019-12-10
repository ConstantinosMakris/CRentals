require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test 'should save valid car' do
    car = Car.new

    car.model = "model"
    car.engine = 1.1
    car.transmission = "manual"
    car.priceDay = 33
    car.priceWeek = 410
    car.seats = 5
    car.ac = true
    car.save
    assert car.valid?
  end

  test 'should not save invalid car' do
    car = Car.new
    car.save
    refute car.valid?
  end
end
