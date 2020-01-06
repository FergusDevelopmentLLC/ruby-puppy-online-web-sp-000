# Add your code here
class Dog
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end

  def self.clear_all
    @@all.clear
  end

end
# Dog.new("Pluto")
# Dog.new("Fido")
# Dog.new("Maddy")
# Dog.print_all
# Dog.clear_all
# Dog.print_all

class Person
  attr_accessor :name
  @@people = []

  def initialize(name)
    @name = name
    # self in the initialize method is our new instance
    # self.class is Person
    # self.class.all == Person.all
    self.class.all << self
  end

  def self.all
    @@people
  end

  def self.find_by_name(name)
    self.all.find{|person| person.name == name}
  end

end

Person.new("Maddy")
