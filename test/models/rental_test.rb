require 'test_helper'

class RentalTest < ActiveSupport::TestCase

    setup do
      @user = users(:oneUser)
      @car = cars(:one)
    end

    test 'should save valid rental' do
      rental = Rental.new

      rental.user = @user
      rental.car = @car
      rental.address = "fhbd"
      rental.comments = "fe"
      rental.start = '2019-12-04 23:07:49'
      rental.end = "2019-12-04 23:07:49"
      rental.save
      assert rental.valid?
    end

    test 'should not save invalid rental' do
      rental = Rental.new
      rental.save
      refute rental.valid?
    end
end
