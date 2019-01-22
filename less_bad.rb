# @order is an array containing dishes
# The dishes are stored as arrays of arrays (the dish, and an array containing
# price and quantity) - not recommended, but useful for illustration.

@order = [['jalfrezi', [3.50, 1]], ['korma', [4.00, 2]], ['vindaloo', [3.75, 1]]]

def show_price
  puts "Prices:\n"
  get_dishes { |dish| puts get_name(dish) + " " + get_price(dish)}
  # @order.each { |dish| puts dish[0] + " " + dish[1][0].to_s } <- for comparison
end

def show_quantity
  puts "Quantity:\n"
  get_dishes.each { |dish| puts get_name(dish) + " " + get_quantity(dish) }
  # @order.each { |dish| puts dish[0] + " " + dish[1][1].to_s } <- for comparison
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
  # NB: This doesn't do anything at the moment. But it removes dependency from a specific named instance variable
  # (we might change it in the future). It also allows us to do stuff to the instance variable (like calculations)
  # before using it if requirements change in the future.
  @order.each
end

def get_name(dish)
  dish[0].to_s # returns a generic enumerator because no block
end

def get_quantity(dish) # array structure hidden here
  dish[1][1].to_s
end

def get_price(dish) # array structure hidden here
  dish[1][0].to_s
end

show_price
show_quantity







