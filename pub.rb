class Pub

  attr_reader :name, :menu_drinks, :till

  def initialize(name)
    @name = name
    @menu_drinks = [["Old Fashioned", 7], ["Mojito", 8], ["Long Island Iced Tea", 9]]
    @till = 100
  end

  def sold_drink(drink, customer)
    if customer.age >= 18 && customer.drunkenness < 10
      customer.buys_drink(drink)
      @till += drink.price
      return "Successful Sale"
    else
      return "No Sale"
    end
  end

end
