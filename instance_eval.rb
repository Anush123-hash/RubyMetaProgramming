first_example = 'Hello'

# Using instance_eval, concat method behaviour is modified only for the first_string
first_example.instance_eval do
  def concat(second_word)
    self << ' ' << second_word
  end
end

second_example = 'Hello'
puts first_example.concat('World')
puts second_example.concat('World')

'''
Output
Hello World # concat method behaviour is modified only for the first_string
HelloWorld
'''
