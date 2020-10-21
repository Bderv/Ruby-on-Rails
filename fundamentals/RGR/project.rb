class Project
    attr_accessor :name
    def initialize name, description
        @name = name
        @description = description
    end

    def name
        @name
    end

    def description
        @description
    end

    def elevator_pitch
        "#{@name}, #{@description}"
    end
end