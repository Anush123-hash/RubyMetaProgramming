class MetaProgramming
  def method_missing(method_name, *args, &block)
    if method_name.eql?(:say_bye)
      block.call(args.join(' and '))
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.eql?(:say_bye) || super
  end
end

meta_object = MetaProgramming.new
puts meta_object.respond_to? :say_bye
meta_object.say_bye('John', 'Ram') { |name| puts "Bye Bye! #{name}" }

'''
Output:
true
Bye Bye! John and Ram

Some old articles recommend to alter respond_to?. But it will lead to trouble, if method is called indirectly

def respond_to?(method_name, *)
  method_name.eql?(:say_bye) || super
end

The above code will return true for meta_object.respond_to?(:say_bye), but it will throw NoMethodError for indirect method call as below

method_obj = meta_object.method :say_bye # Indirect method call
method_obj.call("John", "Ram") { |name| puts "Bye Bye! #{name}" }

Output:
NoMethodError
'''

# To overcome this, we need to use respond_to_missing? method

method_obj = meta_object.method :say_bye # Indirect method call
method_obj.call('John', 'Ram') { |name| puts "Bye Bye! #{name}" }

# Output: Bye Bye! John and Ram
