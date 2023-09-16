'''
The send method is used to invoke a method dynamically by name.\n
Instead of @name = name, we can use send("name=", name) to assign the value
'''

class Metaprogramming
  attr_accessor :name

  def assign_name(name)
    send('name=', name)
  end
end

meta_object = Metaprogramming.new
meta_object.assign_name('Metaprogramming')
puts meta_object.name

# Output: Metaprogramming
