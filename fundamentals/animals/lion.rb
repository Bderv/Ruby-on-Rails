puts 'I am in the lion file'
require_relative 'mammal'

class Lion < Mammal
    attr_accessor :name

    def initialize name
        super 170
        @name = name
    end

    def fly
        self.health -= 10
        puts "After flying, #{self.name} has #{self.health}"
    end

    def attack_town
        self.health -= 50
        puts "After attacking the town, #{self.name} has #{self.health}"
    end

    def eat_humans
        self.health += 20
        puts "After eating humans, #{self.name} has #{self.health}"
    end
end

roary = Lion.new "Roary"
roary.display
roary.attack_town
roary.attack_town
roary.attack_town
roary.eat_humans
roary.eat_humans
roary.fly
roary.fly
roary.display
