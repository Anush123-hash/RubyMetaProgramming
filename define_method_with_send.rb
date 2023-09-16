class MetaProgramming
  attr_accessor :name

  def assign_name(name)
    send('name=', name)
  end

  def say_greetings
    method_name = "print_#{name}"
    self.class.send(:define_method, method_name) { puts name.capitalize }
    send(method_name)
  end

  def create_class_method
    self.class.send(:define_singleton_method, 'print_class_method') { puts 'Class method' }
  end
end

puts ('--------------------------- Creating Instance method----------------------------------')
meta_object = MetaProgramming.new
meta_object.assign_name('hello')
meta_object.say_greetings

puts('----------------------------- Creating Class method-----------------------------------')
meta_object.create_class_method
puts MetaProgramming.print_class_method

'''
Here methods are created at runtime. By this example we can access meta_object.print_hello but not meta_object.print_welcome
To create class method, use define_singleton_method

Output:

--------------------------- Creating Instance method----------------------------------
Hello
----------------------------- Creating Class method-----------------------------------
Class method
'''
