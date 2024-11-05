puts 6.even? # => true
puts 7.even? # => false
puts 6.odd? # => false

puts 13.to_f # => 13.0
puts 47.8.to_i # => 47

puts 'This is concat'.concat('enation')
puts 'This is concat' + 'enation'
puts 'This is concat' << 'enation'
puts 7**2
leastFavoriteFruit = 'Kiwi'.upcase
faveFruit = leastFavoriteFruit
puts faveFruit * 2
puts faveFruit

puts 'yum' * 10
puts 'yum'.reverse

puts 'Wyatt'[0] # => W
puts 'Wyatt'[0, 3] # => Wya So it's 0 up to but not including 3 So 0 to blah-1
puts 'Wyatt'[0..3] # => Wyat So it's 0 up to and including 3 So 0 to blah
puts 'Wyatt'[-1] # => t So it's the last character

name = 'Jimmy McGill'

puts "My name is, #{name}, I'm a lawyer, so Better Call Saul!"

puts 'exampleofusingupcase'.upcase
puts 'EXAMPLEOFUSINGDOWNCASE'.downcase
puts 'exampleofusingcapitalize'.capitalize

puts 'I am a sentence'.length # => 15 as it counts spaces

puts 'Wyatt'.sub('t', 'o') # => Wyaot replaces first instance of t with o
puts 'Wyatt'.gsub('t', 'o') # => Wyaoo replaces all instances of t with o

puts 'My favorite game is:'.insert(-1, 'Pikmin') # => My favorite game is:Pikmin
puts "Cruelty Squad is about being cruel like it's in the name and it isn't crap man!".delete('crap')

puts 5
puts nil
puts :symbol # Symbols are stored in memory once, strings are stored in memory every time they are used
