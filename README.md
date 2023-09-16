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

- Used to assign the property value for a object in runtime
- Used to call a method dynamically in runtime
- Usage of send method can call the private methods and it breaks the encapsulation. So public_send is preferrred.
- Used to create a method in association with define method

## Behaviour of define_method

- Creates a method at the time of class initialization
- Creating a method dynamically at runtime

## Behaviour of method missing

- To make the method return dynamically if the particular method being used is not defined for a object.
- Why respond_to_missing?
- Why not respond_to?

## Behaviour of class eval and instance eval

- class eval and instance eval is used for defining and modifying the behaviour of methods
- It can be done by Open class and MonkeyPatching
- class_eval will execute a block of code in the context of class and allow to create or modify the behaviour of a method at run time (Applicable to all instances of a class)
- instance_eval will also behave as same as class_eval but it will execute the block of code with the context of instance and  modify the behaviour of a method at run time(Applicable only for the specific instance)
- Apart from monkey patching, dynamic methods can also be defined via class_eval and instance_eval
