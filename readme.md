### Demonstration of information hiding and encapsulation

A quick and dirty illustration of some of the concepts discussed in the workshop. 

By hiding the details of implementation from the rest of the class (i.e not referencing data structures directly), it gives us the flexibility to write code and tests that don't change based on what happens 'behind the scenes'. 

None of this is 'good code' - am just bashing out something that illustrates the point. 

Each file is commented to explain what's going on and the differences between them. Files can be run directly, i.e.
`$ ruby bad.rb`.

Continuing the takeaway theme, we start with a collection of dish data, held in an array of arrays (eek!) i.e.
`[[dish[price, quantity]], [dish2[price2, quantity2]]...] etc.`

Our 'production code' is two methods, `show_quantity` and `show_price` to print this information out. Imagination that
there's also a ton of other methods that do the same thing in the same manner. 

- `bad.rb` contains an example of methods that are heavily coupled to the underlying data structure.
- `less_bad.rb` has the same data structure, but the knowledge of it has been abstracted into other methods.

Once the knowledge of the data structure is hidden from our program, the `show_quantity` and `show_price` methods
will not change any more, even when we make radical changes to how the data is stored:

- `less_bad_with_hash.rb` converts the underlying data into a hash of hashes.
- `less_bad_with_new_class.rb` converts the underlying data into attributes of a new class.

In both of these cases,  both our production code and our tests can remain completely undisturbed.

Hope that helps somebody!
