def guess_numbercopy guess
    number = 25
    if guess  > 25
        puts "Guess was too high!"
    elsif guess < 25
        puts "Guess was too low!"
    elsif guess == 25
        puts "You got it!"
    end 
end
guess_numbercopy 12
guess_numbercopy 28
guess_numbercopy 25

def guess_num guess
    number = 25
    unless guess != number
        puts "You got it!"
    else 
        unless guess > number
            puts "Guess was too low!"
        else 
            puts "Guess was too high!"
        end
    end
end

guess_num 25