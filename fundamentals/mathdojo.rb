class MathDojo
    attr_accessor :add, :subtract, :result, :total
    def initialize total = 0
        @total = total
        self
    end

    def add *num
        num.each do |i|
            if i.class == Array
                i.each {|b| self.total += b}
            else
                self.total += i
            end
        end
        self
    end

    def subtract *num
        num.each do |i|
            if i.class == Array
                i.each {|b| self.total -= b}
            else
                self.total -= i
            end
        end
        self
    end

    def result
        puts self.total
        self
    end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15