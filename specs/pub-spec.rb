require('minitest/autorun')
require('minitest/rg')
require("pry")

require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("A Classy Pub")
    @drink1 = Drink.new("Old Fashioned", 7, 2)
    @drink2 = Drink.new("Mojito", 8, 2)
    @drink3 = Drink.new("Long Island Iced Tea", 9, 2)
    @customer1 = Customer.new("Sally", 30, 21)
    @customer2 = Customer.new("Joseph", 12, 41)
    @customer3 = Customer.new("Timmy", 100, 13)
  end

  def test_pub_name
    assert_equal("A Classy Pub", @pub.name)
  end

  def test_menu_drinks
    expected = [["Old Fashioned", 7], ["Mojito", 8], ["Long Island Iced Tea", 9]]
    assert_equal(expected, @pub.menu_drinks)
  end

  def test_till_total
    assert_equal(100, @pub.till)
  end

  def test_sold_drink
    @pub.sold_drink(@drink1, @customer1)
    assert_equal(107, @pub.till)
  end

  def test_sold_drink__under_eighteen
    @pub.sold_drink(@drink1, @customer3)
    assert_equal(100, @pub.till)
  end

  def test_sold_drink__too_drunk
    @pub.sold_drink(@drink1, @customer1)
    assert_equal(100, @pub.till)
  end


end
