class BubbaError < StandardError
end

class AppleTree
    attr_accessor :age 
    attr_reader :height, :apple_count
    def initialize height, apple_count = 0, age = 0
        @height = height
        @apple_count = apple_count
        @age = age
    end

    def year_gone_by
        @age += 1
        @height += @height * 0.10
        if @age <= 3
            raise BubbaError.new "The tree isn't old enough!"
        elsif @age > 10
            raise RuntimeError.new "The tree is too old to grow"
        else 
            @apple_count += 2
        end
    end

    def pick_apples
        @apple_count -= @apple_count
    end
end
