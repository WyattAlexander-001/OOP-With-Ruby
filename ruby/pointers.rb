a = 'hi there'
b = a
a = 'not here'
puts "This is a's value: " + a
puts "This is b's value: " + b

a = 'hi there'
b = a
a << ', Bob'
puts b
puts a
