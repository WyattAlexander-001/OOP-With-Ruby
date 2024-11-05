# Using object.method to do OOP to make clean modular code

# Making Strings
sentence = String.new("I wish time didn't move so slow")
puts sentence

# Checking available methods for object

# puts "hi".methods()
# puts "-----------------------------"
# puts 1.methods()
# puts "-----------------------------"
# puts [1,2,3].methods()
# puts "-----------------------------"

# upcase, basically CAPSLOCK
puts 'i am a lowercase sentence that needs to be turned upcase'.upcase

# Split, turns a string into an array of words
puts 'I love donuts and coffee'.split

# pushing to an array

stuff_array = []
stuff_array.push('You')
stuff_array.push('are')
stuff_array.push('a super hero!')
puts stuff_array.inspect
