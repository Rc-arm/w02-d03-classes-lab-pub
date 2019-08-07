require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drink')

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Sally", 30)
    @customer2 = Customer.new("Joseph", 12)
  end

  def test_customer_name
    assert_equal("Sally", @customer1.name)
  end

  def test_customer_wallet
    assert_equal(30, @customer1.wallet)
  end

end
