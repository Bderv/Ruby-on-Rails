#1 Write a program that would print all the numbers from 1 to 255. 
#x = (1..255)
#puts x.to_a

#2 Write a program that would print all the odd numbers from 1 to 255.
#x = (1..255)
#puts x.find_all { |i| i % 2 != 0 }

#3 Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far.
def function
    sum = 0
    x = (0..255).each do |i|
        puts i
        sum += i
        puts sum
    end
end
# function 

#4 Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen. Being able to loop through each member of the array is extremely important.
#x = [1,3,5,7,9,13]
#puts x.each{ |i| print i, "--" }

#5.Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.
#x = [1,3,5,-6,12,8,7,0]
#puts x.max.to_s


#6. Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a length function with this assignment.
def average (arr)
    sum = 0
    (arr).each do |i|
        sum += i
    end
    sum = sum / arr.length
    puts sum
end
# average([1,3,5,7,9])

#7. Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].
def odds (arr)
    puts arr.find_all { |i| i % 2 != 0 }
end
# odds(1..255)

#8. Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).
def greater (arr, y)
    puts arr.count { |elem| elem > y }
end
# greater([1,3,5,7],3)

#9. Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself. When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
def squared (arr)
    puts arr.map! { |elem| elem * elem }
end
# squared([1,5,10,-2])

#10. Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. When the program is done, x should have no negative values, say [1, 5, 10, 0].
def noNegatives (arr)
    puts arr.each_index { |i| arr[i] = 0 if arr[i] < 0}
end
# noNegatives([1,5,10,-2])

#11. Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.
def minMaxAvg (arr)
    sum = 0
    (arr).each do |i|
        sum += i
    end
    sum = sum / arr.length
    puts "max num is #{arr.max}, min num is #{arr.min}, avg is #{sum}"
end
# minMaxAvg ([1,5,10,-2])

#12. Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].
def shift (arr)
    arr.shift
    arr.push(0)
    puts arr
end
# shift ([1,5,10,7,-2])

#13. Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].
def negativeToString (arr)
    puts arr.each_index { |i| arr[i] = "Dojo" if arr[i] < 0}
end
# negativeToString ([-1, -3, 2])

