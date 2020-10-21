puts 'I am in the mammal file'
class Mammal
    attr_accessor :health

    def initialize health = 150
        @health = health
    end

    def display
        puts "the #{self.class} has #{self.health} health"
    end

end
