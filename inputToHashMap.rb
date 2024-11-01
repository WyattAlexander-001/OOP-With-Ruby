# Initialize an empty hash
hashmap = {}

puts "Enter key-value pairs separated by a space. Type 'done' to finish."

loop do
  input = gets.chomp   # Read user input and remove newline
  break if input == "done"  # Exit loop if user types 'done'
  
  key, *rest = input.split   # Split input into key and the rest
  value = rest.join(' ')     # Join the rest of the input into a single string as the value
  hashmap[key] = value       # Assign the value to the key in the hash
end

puts "You've entered the following data into the hashmap:"
hashmap.each do |key, value|
  puts "#{key}: #{value}"
end
