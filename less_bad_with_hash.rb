@order = [{'jalfrezi': {price: 3.50, quantity: 1}},
          {'korma': {price: 4.00, quantity: 2}},
          {'vindaloo': {price: 3.75, quantity: 1}}]

# To prove the point - the @order array now contains a hash of hashes.
# But we haven't needed to change any of the methods that use the data.
# It all still works. No changes to our tests either!

def show_price
  puts "Prices:\n"
  get_dishes { |dish| puts get_name(dish) + " " + get_price(dish)}
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

# Note how much clearer these methods are. They no longer know anything about
# the underlying array. They don't even know they need to do a conversion to
# string to avoid a crash. They know nothing about how the dish, price and
# quantity is stored - we can change from an array to hash and only need
# to change the methods below.

private

def get_dishes
  @order.each
end

def get_name(dish)
  dish.keys[0].to_s
end

def get_quantity(dish) # hash structure hidden here
  dish[dish.keys[0]][:quantity].to_s
end

def get_price(dish) # hash structure hidden here
  dish[dish.keys[0]][:price].to_s
end

show_price
show_quantity







