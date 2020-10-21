class BankAccount
    @@accounts = 0
    def initialize bank_num = 0, checkings = 0, savings = 0, interest = 0.01
        @bank_num = bank_num
        @checkings = checkings
        @savings = savings
        @@accounts += 1
        bank_num_generator
    end

    def display_bank_num
        return @bank_num
        
    end

    def display_checkings
        return @checkings
        
    end

    def display_savings
        return @savings
        
    end

    def deposit amount, type
        if type == "checkings"
            @checkings += amount
        else
            @savings += amount
        end
        
    end

    def withdraw amount, type
        if type == "checkings"
            unless amount < @checkings
                raise RuntimeError.new "insufficient amount!"
            else
                @checkings -= amount 
            end
        elsif type == "savings"
            unless amount < @savings
                raise RuntimeError.new "insufficient amount!"
            else
                @savings -= amount
            end
        end
        
    end

    def display_balance
        return @checkings + @savings
        
    end

    def display_accounts
        @@accounts
        
    end

    private
        def bank_num_generator
            @bank_num = 10.times.map {rand(9)}.join
            
        end

end

# bank = BankAccount.new
# bank.deposit 100, 'savings'
# bank.deposit 50, 'checkings'

# bank2 = BankAccount.new

# bank.display_checkings



