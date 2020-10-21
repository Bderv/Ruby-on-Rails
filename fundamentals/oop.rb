# name = 'bob' #local variable

# @name = 'carl' #instance variable

# @@name = 'nick' #class variable

# puts name, @name, @@name

class User
    attr_accessor :name, :age

    def initialize name, age = 19
        puts 'creating User'
        @name = name
        @age = age
    end

    def show
        puts self
    end
end

class Admin < User
    def initialize name
        puts 'creating an admin'
        super
        @name = name+' the admin'
    end


end

# carl = User.new 'carl', 15
# carl.name = 'bob'
# puts carl.name
# puts carl.age
# carl.show

bob = Admin.new 'bob'
puts bob.name
bob.show 
