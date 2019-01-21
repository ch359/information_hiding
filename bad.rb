# @order is an array containing dishes
# The dishes are stored as arrays of arrays (the dish, and an array containing
# price and quantity) - not recommended, but useful for illustration.

@order = [['jalfrezi', [3.50, 1]], ['korma', [4.00, 2]], ['vindaloo', [3.75, 1]]]


# If we change @order to contain hashes instead of arrays, we'll
# need to change both show_prices and show_quantities
# (and potentially a hundred other methods in a complex program)

def show_price
  @order.each { |dish| puts dish[0] + " " + dish[1][0].to_s }
end

def show_quantity
  @order.each { |dish| puts dish[0] + " " + dish[1][1].to_s }
end

def show_something_else
  # potentially loads more methods
end

show_price
show_quantity







