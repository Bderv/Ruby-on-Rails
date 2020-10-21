#1. Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
def function (arr)
    sum = 0
    (arr).each do |i|
        if i > 10
            puts i
        end
        sum += i
    end
    puts sum
end
# function ([3,5,1,2,7,9,8,13,25,32])

#2. Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
def shuffleprint (arr)
    puts arr.shuffle
    arr[i].filter{|i| i.length > 5}
end
# shuffleprint(['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher'])

#3. Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
# def Alphabet (arr)
#     puts arr.to_a.to_s
#     puts arr[25]
#     puts arr[0]
#     if arr[0] == 'a' || 'e' || 'i' || 'o' || 'u'
#         puts "It's a Vowel!"
#     end
# end
# Alphabet('a'..'z')

#4. Generate an array with 10 random numbers between 55-100.
# puts 10.times.map{ 55 + Random.rand(45) }

#5. 


