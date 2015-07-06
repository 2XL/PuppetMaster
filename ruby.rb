
"Hello World"

put "Hello World" 


def hello 
puts "Hello World" # print in ruby
end


def helloTo(name)
puts "Hello #{name}!"  # insert values into a string
end

helloTo("Joanna")


# class with a bunch of methods
class Greeter
	def initialize(name = "World")
		@name = name
	end
def say_hi
	puts "Hi #{@name}!"
end
def say_bye
	puts "Bye #{@name}, come back soon."
end
end

g = Greeter.new("Sara")
g.say_hi
g.say_bye
g.@name

Greeter.instance_methods(false) # dont display from ancesters
g.respond_to?("name")
g.respond_to?("say_hi")
g.respond_to?("to_s")
