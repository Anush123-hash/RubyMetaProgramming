'''
  Usage of send method can call the private methods and it breaks the encapsulation
  So public_send is preferrred.
'''

class MetaProgramming
  attr_accessor :name

  class << self
    def print_class_method
      puts 'Class method'
    end

    private

    def print_private_class_method
      puts 'Private class method'
    end
  end

  def print_method
    puts 'Method'
  end

  private

  def print_private_method
    puts 'Private method'
  end
end

meta_object = MetaProgramming.new

puts ('--------------------------- Call Public Methods--------------------------------')
meta_object.public_send('print_method')
MetaProgramming.public_send('print_class_method')

puts ('--------------------------- Call Private Methods--------------------------------')
meta_object.send('print_private_method')
# meta_object.public_send('print_private_method') # => NoMethodError

MetaProgramming.send('print_private_class_method')
# MetaProgramming.public_send('print_private_class_method') # => NoMethodError