class BaseClass

  def initialize

    @order = []
    create_classes

  end

  # Finally we're going to replace the godawful array of hashes of hashes with
  # an OrderedMeal class. Still no change to our methods.

  def show_price
    puts "Prices:\n"
    get_dishes.each { |dish| puts get_name(dish) + " " + get_price(dish)}
    # @order.each { |dish| puts dish[0] + " " + dish[1][0].to_s }
  end

  def show_quantity
    puts "Quantity:\n"
    get_dishes.each { |dish| puts get_name(dish) + " " + get_quantity(dish) }
    # @order.each { |dish| puts dish[0] + " " + dish[1][1].to_s }
  end

  def show_something_else
    # potentially loads more methods
  end

# The data now comes directly from the meals themselves..

  private

  def get_dishes
    @order
  end

  def get_name(dish)
    dish.name
  end

  def get_quantity(dish) # hash structure hidden here
    dish.quantity.to_s
  end

  def get_price(dish) # hash structure hidden here
    dish.price.to_s
  end

  def create_classes
      @order.push(OrderedMeal.new('jalfrezi', 3.50, 1))
      @order.push(OrderedMeal.new('korma', 4.00, 2))
      @order.push(OrderedMeal.new('vindaloo', 3.75, 1))
  end
end

class OrderedMeal

  attr_reader :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @quantity = quantity
    @price = price
  end
end

base_class = BaseClass.new
base_class.show_price
base_class.show_quantity