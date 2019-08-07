require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Old Fashioned", 7)
  end

  def test_drink_name
    assert_equal("Old Fashioned", @drink1.name)
  end

  def test_drink_price
    assert_equal(7, @drink1.price)
  end

end
