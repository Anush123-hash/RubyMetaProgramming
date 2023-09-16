class MetaProgramming
  %w[hello welcome bye].each do |method_name|
    define_method("print_#{method_name}") { puts method_name.capitalize }
  end

  define_singleton_method(:class_method) { puts 'Class Method' }
end

meta_object = MetaProgramming.new
meta_object.print_hello
meta_object.print_welcome
meta_object.print_bye

MetaProgramming.class_method

'''
All methods are initialized at the time of class initialization

Output:
Hello
Welcome
Bye
Class Method
'''
