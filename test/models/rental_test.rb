require 'test_helper'

class RentalTest < ActiveSupport::TestCase

    setup do
      @user = users(:one)
    end

    test 'should save valid rental' do
      rental = Rental.new

      rental.user = @user
      rental.car = @car

      rental.save
      assert rental.valid?
    end
end
