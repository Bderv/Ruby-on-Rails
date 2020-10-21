class Human
    attr_accessor :str,  :int, :stealth, :hp
    
    def initialize str = 3, int =3, stealth = 3, hp = 100
        @str = str
        @int = int
        @stealth = stealth
        @hp = hp
    end

    def attack object
        if object.class.ancestors.include?(Human)
            object.health -= 10
        end
    end

    def display_health
        puts self.hp
    end
end