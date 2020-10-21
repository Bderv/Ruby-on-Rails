puts 'I am in the dog file'
require_relative 'mammal'

class Dog < Mammal
    attr_accessor :name

    def initialize name
        super 150
        @name = name
    end

    def pet
        self.health += 5
        puts "After petting, #{self.name} has #{self.health}"
    end

    def walk
        self.health -= 1
        puts "After walking, #{self.name} has #{self.health}"
    end

    def run
        self.health -= 5
        puts "After running, #{self.name} has #{self.health}"
    end
end

mila = Dog.new "Mila"
mila.display
mila.walk
mila.walk
mila.walk
mila.run
mila.run
mila.pet
mila.display