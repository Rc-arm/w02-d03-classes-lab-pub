require('minitest/autorun')
require('minitest/rg')

require_relative('../food')

class FoodTest < MiniTest::Test

  def setup
    @food1 = Food.new("pizza", 5, 10)
    @food2 = Food.new("lasagne", 7, 1)
  end

  def test_return_name
    assert_equal("pizza", @food1.name)
  end
end
