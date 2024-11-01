# These output to true or false
puts 1<2
puts 2+2 <4
2.even?
4.odd?
"asdfsdgfdghgf".empty?
"".empty?
" ".empty?

# if statement
age = 20
puts "Sorry kid, you can only drink if 21 or older" if age < 21 

if age == 0
    puts "You're a baby!"
elsif age < 13
    puts "You're a child!"
elsif age < 20
    puts "You're a teenager!"
elsif age == 20
    puts "You're an adult! BUT YOU CAN'T DRINK!"
else
    puts "You're an adult!"
end

# case statement
characterName = "Voldemort"
case characterName
when "Harry Potter"
    puts "You're a wizard Harry!"
when "Voldemort"
    puts "You're a bad wizard!"
else
    puts "You're not a wizard!"
end

