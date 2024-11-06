faveFruits = %w[Mango avocado banana mangosteen lanzones]
puts faveFruits
puts faveFruits.length
puts faveFruits[0]
puts faveFruits[100] # You get nothing
puts faveFruits[-1]
# Upcase all the fruits
loop do
  faveFruits.each do |fruit|
    puts fruit.upcase
  end
  break
end

# Much cleaner way to iterate through an array
faveFruits.each do |fruit|
  puts fruit.capitalize
end

puts faveFruits.join("\t\n AND \n \t")

faveFruits.each do |fruit|
  puts fruit.reverse
end
puts '-----------------'
puts faveFruits.sort
puts faveFruits.include?('Mango')
puts faveFruits.include?('mango')
