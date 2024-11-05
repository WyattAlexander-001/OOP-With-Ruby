# Example of a Nested Hash in Ruby

# Creating a nested hash representing a library system
library = {
  fiction: {
    books: [
      { title: 'To Kill a Mockingbird', author: 'Harper Lee', copies: 4 },
      { title: '1984', author: 'George Orwell', copies: 6 }
    ],
    section: 'Fiction Section'
  },
  non_fiction: {
    books: [
      { title: 'Sapiens', author: 'Yuval Noah Harari', copies: 5 },
      { title: 'Educated', author: 'Tara Westover', copies: 3 }
    ],
    section: 'Non-Fiction Section'
  },
  children: {
    books: [
      { title: "Harry Potter and the Sorcerer's Stone", author: 'J.K. Rowling', copies: 7 },
      { title: "Charlotte's Web", author: 'E.B. White', copies: 2 }
    ],
    section: "Children's Section"
  }
}

# Output the entire library hash
puts 'Initial Library Structure:'
puts library
puts "\n"

# Accessing Elements
puts 'Accessing the Fiction Section:'
puts library[:fiction]
puts "\n"

puts 'Accessing the first book in Non-Fiction:'
first_non_fiction_book = library[:non_fiction][:books][0]
puts first_non_fiction_book
puts "\n"

# Modifying Elements
puts "Modifying the number of copies for '1984'..."
library[:fiction][:books][1][:copies] = 10
puts "Updated '1984' copies:"
puts library[:fiction][:books][1]
puts "\n"

# Adding a New Book
puts "Adding a new book to the Children's section..."
new_child_book = { title: 'The Very Hungry Caterpillar', author: 'Eric Carle', copies: 5 }
library[:children][:books] << new_child_book
puts "Updated Children's books:"
puts library[:children][:books]
puts "\n"

# Deleting a Book
puts "Deleting 'Charlotte's Web' from Children's books..."
library[:children][:books].delete_if { |book| book[:title] == "Charlotte's Web" }
puts "Children's books after deletion:"
puts library[:children][:books]
puts "\n"

# Iterating Through the Nested Hash
puts 'Iterating through each section and listing books:'
library.each do |_category, details|
  puts "\n#{details[:section]}:"
  details[:books].each do |book|
    puts " - '#{book[:title]}' by #{book[:author]} (Copies: #{book[:copies]})"
  end
end
puts "\n"

# Using Operators
# Let's say we want to transfer 2 copies of 'Sapiens' to 'Fiction' section
puts "Transferring 2 copies of 'Sapiens' to Fiction section..."
sapiens = library[:non_fiction][:books].find { |book| book[:title] == 'Sapiens' }
if sapiens && sapiens[:copies] >= 2
  sapiens[:copies] -= 2
  # Adding to Fiction section (assuming Fiction can hold it)
  library[:fiction][:books] << { title: sapiens[:title], author: sapiens[:author], copies: 2 }
  puts 'Transfer complete.'
else
  puts 'Not enough copies to transfer.'
end

# Display updated library
puts "\nUpdated Library Structure After Transfer:"
library.each do |_category, details|
  puts "\n#{details[:section]}:"
  details[:books].each do |book|
    puts " - '#{book[:title]}' by #{book[:author]} (Copies: #{book[:copies]})"
  end
end
puts "\n"

# Adding a New Section
puts "Adding a new section: 'Magazines'..."
library[:magazines] = {
  books: [
    { title: 'National Geographic', author: 'Various', copies: 10 },
    { title: 'Time', author: 'Various', copies: 8 }
  ],
  section: 'Magazines Section'
}
puts 'Library after adding Magazines section:'
puts library
puts "\n"

# Removing a Section
puts "Removing the 'Fiction' section from the library..."
library.delete(:fiction)
puts 'Library after removing Fiction section:'
puts library
puts "\n"

# Final Iteration to Show Current Library State
puts 'Final Library State:'
library.each do |_category, details|
  puts "\n#{details[:section]}:"
  details[:books].each do |book|
    puts " - '#{book[:title]}' by #{book[:author]} (Copies: #{book[:copies]})"
  end
end

# Simplified Example of Nested Hash in Ruby
vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2020, make: 'Honda', model: 'Accord' }
}

puts vehicles[:alice][:year]
#=> 2019
puts vehicles[:blake][:make]
#=> "Volkswagen"
puts vehicles[:caleb][:model]
#=> "Accord"
