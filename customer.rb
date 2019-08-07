class Customer

  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @drinks = []
    @age = age
    @drunkenness = 15
  end

  def buys_drink(drink)
    @drinks.push(drink)
    @wallet -= drink.price
    @drunkenness += drink.alcohol_level
  end

  def customer_order_length()
    return @drinks.length
  end

  def buys_food(food)
    @wallet -= food.price
    @drunkenness -= food.rejuvination_level
  end



end
