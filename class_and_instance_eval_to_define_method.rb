class MetaProgramming
  def initialize(name)
    @name = name
  end
end

meta_object_one = MetaProgramming.new('John')
meta_object_two = MetaProgramming.new('Ramu')

'''
meta_object_one.name # => NoMethod Error
meta_object_two.name # => NoMethod Error
'''

# Lets use instance eval to solve this
meta_object_one.instance_eval do
  def name
    @name
  end
end

puts meta_object_one.name # => John

'''
meta_object_one.name # => NoMethod Error
'''

# Now we can use the class eval
MetaProgramming.class_eval do
  def name
    @name
  end
end

puts meta_object_one.name # => John
puts meta_object_two.name # => Ramu
