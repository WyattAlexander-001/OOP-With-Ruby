# https://codelikethis.com/lessons/learn-to-code/variables#anchor/lab_play_in_irb
=begin
Let's spend a few minutes just playing around in IRB. Some things to try:

write a poem
YELL THE POEM
calculate 2 + 2 and more complicated things
assign your best friend to a variable
reverse your best friend's name
get a new best friend and reverse their name too
=end


poem = "This is a poem about hearts and love and stuff"
shoutedPoem = poem.upcase
puts shoutedPoem

puts 2+2*10

bestFriend = "Annika"
reversedBestFriend = bestFriend.reverse
puts reversedBestFriend

# This is a hash, what it does is it stores key value pairs
{:bestFriend => "Annika", :newBestFriend => "Wyatt"}.each do |key, value|
    puts value.reverse
end

animals = {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
puts animals[:dog]

games =  {
    :action => 'Doom',
    :rpg => 'Final Fantasy',
    :puzzle => 'Tetris',
    :rts => 'Pikmin',
    :fps => 'Half-Life',
    :sports => 'NBA 2K'
}
puts games[:action]
puts games[:rpg]

# Print entire hash
puts games

# Print Hash in a more readable way
# This is a loop that goes through each key value pair in the hash
# and prints them out
games.each do |keyPart, valueThing| # || is a block variable, this format is used for hash iteration
    puts "Key: #{keyPart}, Value: #{valueThing}" 
end