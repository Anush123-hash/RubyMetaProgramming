# Ruby MetaProgramming

Here, we can discuss about one of the features in ruby which is responsibe for its expressivness, that is MetaProgramming

## What is MetaProgramming?

- Metaprogramming is a concept of enabling the code to generate a new code or modify the existihe ng behaviour at runtime.
- The concept is metaprogramming is not newly arrived. This is a long living feature in programming world starting from the assembly language.
- Now a days, some programming language like ruby and python has advance level of metaprogramming fetaures

## Why MetaProgramming?

- Harvest the advantage of dynamic coding
- Flexibility
- Remove the duplication if there is a common pattern
- Behaviour of a object can be customized

## How MetaProgramming can be implemented in ruby

- send
- define_method
- class eval and instance eval (Open & MonkeyPatching)
- method_missing

## Behaviour of send method

- [Used to assign the property value for a object in runtime](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/assign_value_with_send.rb)
- [Used to call a method dynamically in runtime](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/dymanic_method_call_with_send.rb)
- [Usage of send method can call the private methods and it breaks the encapsulation. So public_send is preferrred.](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/use_public_send.rb)
- [Used to create a method in association with define method](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/define_method_with_send.rb)

## Behaviour of define_method

- [Creating a method dynamically at runtime](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/define_method.rb)

## Behaviour of method missing

- [To make the method return dynamically if the particular method being used is not defined for a object.](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/method_missing.rb)
- [respond_to_missing?](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/respond_to_missing_for_method_missing.rb)

## Behaviour of class eval and instance eval

- class eval and instance eval is used for defining and modifying the behaviour of methods
- It can be done by Open class and MonkeyPatching
- [class_eval will execute a block of code in the context of class and allow to create or modify the behaviour of a method at run time (Applicable to all instances of a class)](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/class_eval.rb)
- [instance_eval will also behave as same as class_eval but it will execute the block of code with the context of instance and  modify the behaviour of a method at run time(Applicable only for the specific instance)](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/instance_eval.rb)
- [Apart from monkey patching, dynamic methods can also be defined via class_eval and instance_eval](https://github.com/Anush123-hash/RubyMetaProgramming/blob/master/class_and_instance_eval_to_define_method.rb)

## Corns and Mitigations

- Increase the complexity and affects readability (Mitigated by proper documentation and test cases)
- Depends on its usage, it may leads to performance degradation since operations are performed in runtime and overload the system
- Because of having a flexibility to override the behaviours, it may lead of potential security issue if it is not used properly

## Reference

- [MetaProgramming in Ruby](https://www.scaler.com/topics/metaprogramming-in-ruby/)
- [class eval and instance eval](https://web.stanford.edu/~ouster/cgi-bin/cs142-winter15/classEval.php)
