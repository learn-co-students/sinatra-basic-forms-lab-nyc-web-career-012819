class Puppy

  attr_accessor :age, :name
  attr_reader :breed

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

end
