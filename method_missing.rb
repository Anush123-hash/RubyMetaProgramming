class MetaProgramming
  def say_hello
    puts 'Hello'
  end

  def method_missing(method_name, *args, &block)
    if method_name.eql?(:say_bye)
      block.call(args.join(' and '))
    else
      super
    end
  end
end

meta_object = MetaProgramming.new
meta_object.say_bye('John', 'Ram') { |name| puts "Bye Bye! #{name}" }

puts meta_object.respond_to?(:say_bye)

'''
Output:
Bye Bye! John and Ram
false -> Eventhough we defined the method say_bye, respond_to? returns false. To overcome this, we need to use respond_to_missing? method

If we call meta_object.say_welocm, then it will return NoMethodError
'''
