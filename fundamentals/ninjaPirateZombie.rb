# class Admin
#     attr_accessor :name :attack :health

#     def initialize name, attack, health
#         @name = name
#         @attack = attack
#         @health = health
#     end

#     def attack(object)
#         if @attack == object.@health
#             puts "you won the fight"
#         end
#     end

# end

# class Ninja < Admin
#     def initialize name, attack, health
#         super
#         @attack = stab
#         @health = 100
#     end

#     def stab(object)
#         object.health-=20
#     end

# end

# class Zombie < Admin
#     def initialize name, attack, health
#         super
#         @attack = b
#         @health = 100
#     end

#     def bludgeon(object)
#         object.health-=20
#     end

# end

# class Pirate < Admin
#     def initialize name, attack, health
#         super
#         @attack = c
#         @health = b
#     end

#     def slice(object)
#         object.health-=20
#     end

# end

# pirate = Pirate.new 'Captain Hook'
# ninja = Ninja.new 'Mr Miyagi'
# zombie = Zombie.new 'Frank the Zombie'

# puts pirate.name

class Fighters
    attr_accessor :name, :attk, :health
    def initialize name, attk = 5, health = 100
        @name = name
        @attk = attk
        @health = health
    end
    def attack fighter_being_attacked
        fighter_being_attacked.health -= self.attk
    end
    def display_stats
        puts "#{self.name}, health is #{self.health}, attack is #{self.attk}"
    end


end

class Ninja < Fighters
    def attack fighter_being_attacked
        super
        if fighter_being_attacked.class == Zombie
            fighter_being_attacked.health -= 50
        end
    end

end

class Zombie < Fighters
    # def initialize health
    #     super
    #     health += 200
    # end
    def attack fighter_being_attacked
        super
        if fighter_being_attacked.class == Pirate
            fighter_being_attacked.health -= 50
        end
    end

end

class Pirate < Fighters
    def attack fighter_being_attacked
        super
        if fighter_being_attacked.class == Ninja
            fighter_being_attacked.health -= 50
        end
    end

end

bob = Ninja.new 'bob'
rob = Zombie.new 'rob'
dob = Pirate.new 'dob'

rob.attack dob
dob.display_stats
dob.attack bob
bob.display_stats
bob.attack rob
rob.display_stats
