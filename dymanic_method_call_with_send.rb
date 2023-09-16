class MetaProgramming
  attr_accessor :name

  def assign_name(name)
    send('name=', name)
  end

  class << self
    def print_hello_class_method
      puts 'Hello from class method'
    end
  end

  def print_hello
    puts 'Hello'
  end

  def print_welcome
    puts 'Welcome'
  end

  def print_bye
    puts 'Bye'
  end

  def say_greetings
    send("print_#{name}")
  end
end

puts('--------In this case,dynamically print_hello method is called via send-------------------')
meta_object = MetaProgramming.new
meta_object.assign_name('hello')
meta_object.say_greetings

puts('---------In this case,dynamically print_welcome method is called via send------------------')
meta_object = MetaProgramming.new
meta_object.assign_name('welcome')
meta_object.say_greetings

puts('---------In this case,dynamically print_bye method is called via send-------------------')
meta_object = MetaProgramming.new
meta_object.assign_name('bye')
meta_object.say_greetings

puts('---------Call the private method via send-------------------------------')
puts MetaProgramming.send('print_hello_class_method')

'''
Output:

--------In this case,dynamically print_hello method is called via send-------------------
  Hello
--------In this case,dynamically print_welcome method is called via send------------------
  Welcome
---------In this case,dynamically print_bye method is called via send-------------------
  Bye
---------Call the private method via send-------------------------------
  Hello from class method

'''
