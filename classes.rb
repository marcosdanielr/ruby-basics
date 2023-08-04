class CharacteristicsDog
  def breed
    "Belgian Shepherd"  
  end
end

class Dog < CharacteristicsDog
  attr_reader :name, :age
  attr_writer :age

  # attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age            
  end

  def introduce
    "The dog name is #{@name} and is #{@age} years old"
  end

  def bark
    "#{@name} is saying: woof woof"
  end

  def puppy?
    @age <= 2
  end

  def puppy!
    if @age > 2
      @age = 1            
    end
  end

end
