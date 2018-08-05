class Person
  attr_accessor :name 
  @@people = []
  
  def self.all 
    @@people
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  
  def self.find_by_name(name)
    self.all.detect {|person| person.name == name}
  end
  
end