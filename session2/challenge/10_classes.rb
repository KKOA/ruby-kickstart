# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#

class Person # define class

  attr_accessor :name, :age #creates getter and setter for name and age (name= ,name, age= age)

  def initialize(name,age)
    # assigns values to instance variables
    @name = name
    @age = age
  end

  def birthday
    #increment age
    @age += 1
  end

end
josh = Person.new('Josh', 28) #create a new object and passes parameters to initialize method
josh.name = 'Joshua' # pass value to name setter method name= inside
puts josh.name
puts josh.birthday
puts josh.age # get value from method age
puts josh.birthday
puts josh.age
