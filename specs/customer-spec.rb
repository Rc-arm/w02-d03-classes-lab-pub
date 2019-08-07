require('minitest/autorun')
require('minitest/rg')
require('pry')

require_relative('../customer')
require_relative('../drink')
require_relative('../food')

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Sally", 30, 21)
    @customer2 = Customer.new("Joseph", 12, 41)
    @drink1 = Drink.new("Old Fashioned", 7, 2)
    @food1 = Food.new("pizza", 5, 10)
  end

  def test_customer_name
    assert_equal("Sally", @customer1.name)
  end

  def test_customer_wallet
    assert_equal(30, @customer1.wallet)
  end

  def test_buys_drink__single
    @customer1.buys_drink(@drink1)
    assert_equal(1, @customer1.customer_order_length)
  end

  def test_buys_drink__multiple
    @customer1.buys_drink(@drink1)
    @customer1.buys_drink(@drink1)
    assert_equal(2, @customer1.customer_order_length)
  end

  def test_wallet_total__drinks_purchase
    @customer1.buys_drink(@drink1)
    @customer1.buys_drink(@drink1)
    assert_equal(16, @customer1.wallet)
  end

  # def test_customer_drunkenness__baseline
  #   assert_equal(0, @customer1.drunkenness)
  # end

  # def test_customer_drunkenness__1_drink
  #   @customer1.buys_drink(@drink1)
  #   assert_equal(2, @customer1.drunkenness)
  # end

  def test_customer_buys_food
    @customer1.buys_food(@food1)
    assert_equal(5, @customer1.drunkenness)
  end

end
