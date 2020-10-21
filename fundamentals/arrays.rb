a = ['Matz', 'Guido', 'Dojo', 'Choi', 'John']
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]


puts a[0]
puts a[1]
puts b.class
puts b.shuffle.join("-")
puts a.to_s
puts a.length
puts "Length of a is #{a.length}"
puts a.reverse
puts a+b
puts a.to_s+b.to_s
puts (a+b).to_s
a.delete('Choi')
puts a
puts "----"
a = %w{cat dog bear}
puts a.values_at(1,2).join(' and ')
#=> "dog and bear"
puts a.values_at(0,1,2).join(' and ')
#=> "cat and dog and bear"

