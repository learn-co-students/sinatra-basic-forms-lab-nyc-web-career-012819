class Puppy
attr_reader :breed
attr_accessor :age, :name
def initialize(name, breed, age)
  @name = name
  @breed = breed
  @age = age
end

end
