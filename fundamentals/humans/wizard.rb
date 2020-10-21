require_relative 'human'

class Wizard < Human
    attr_accessor :int, :hp

    def initialize int = 25, hp = 50
        super()
        @int = int
        @hp = hp
    end

end

gandalf = Wizard.new
puts gandalf.hp
puts gandalf.int
puts gandalf.str