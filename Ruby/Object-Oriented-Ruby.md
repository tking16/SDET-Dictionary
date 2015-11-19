#Object Oriented Programming with Ruby

##What is OOP?
*modelling real world things as objects in our code*
- Object = state + behaviour
- State is described by variables
- Every object of the same type has its own state
[object picture] (http://www.teachitza.com/delphi/object.gif)

##Encapsulation
>We cannot directly access the state of an object. We need to use methods to do so.
Setters and Getters and all that

*attr_reader* - creates getter methods
*attr_writer* - creates setter methods
*attr_accessor* - creates getter and setter methods

##Inheritance

##Polymorphism
making the innards of a method work differently but the external is the same

##Recap
class Bird
def preen
			puts "i am cleaning my faeths
	end
	end
		
		class Penguin < Bird
			def fly
				puts "sorry. I'd rather swim"
			end
			end
	
###Access Control
	-public
	-protected(rarely used)
	-private - can't be called with an explicit receiver
		
when writing code just put the accessor keyword and anything underneath will become private/public etc.
	##Modules
	a module allows us to group together various different classes.
	we can have modules within modules
	**mix-ins** a way to store generic methods that are useful to us
	e.g
		module Greeter
			def greet
				return "Hello!"
			end
		end
		
		class Person
			include Greeter
		end
		
		alice = Person.new
		alice.greet

-in ruby a class can only inherited from one class. So modules are a good way to inherit from multiple classes
- Modules impply no semantic link

##Everything is an Object
