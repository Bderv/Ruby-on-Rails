class Buyer
    attr_accessor :money

    def buy_soda
        if @money > 0 
            @money -= 1
            return true
        else 
            return false
        end

    end

end