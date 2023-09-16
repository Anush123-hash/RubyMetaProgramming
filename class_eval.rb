# String has a method called concat which will concatenate a new string with exisiting string. But it will concatenate without an empty space

first_word = "Hello"
puts first_word.concat("World")

# => Output: HelloWorld

# with class_eval, concat method can be dynamically modified by having a space between first and second word

String.class_eval do
  def concat(second_word)
    self << ' ' << second_word
  end
end

first_word = "Hello"
puts first_word.concat("World")

# => Output: Hello World