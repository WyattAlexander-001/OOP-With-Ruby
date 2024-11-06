delay = 1
count = 0
puts 'Please enter your name:'
name = gets.strip # strip and chomp are similar, but strip removes all whitespace where chomp only removes the newline character

3.times do
  puts 'Enter a phone number:'
  phone_number = gets.strip
  puts "You entered #{phone_number}"
end

7.times do |i|
  puts "i is #{i}"
  i + 1
end

total = 0
while total < 10
  puts "total is #{total}"
  total += 1
end

loop do
  puts 'Apple Campus, One Infinite Loop, Cupertino, CA 95014'
  sleep(delay)
  count += delay
  puts "You've waited #{count} seconds my friend #{name}"
end
