states = {}

states['CA'] = 'California'
states['MA'] = 'Massachusetts'
states['NY'] = 'New York'

puts states['NY'].reverse

prePreppedExampleOfStates = {
  'CA' => 'California',
  'MA' => 'Massachusetts',
  'NY' => 'New York',
  'TX' => 'Texas',
  'FL' => 'Florida',
  'OH' => 'Ohio'
}

prePreppedExampleOfStates['KY'] = 'Kentucky'
prePreppedExampleOfStates.delete('TX')
puts prePreppedExampleOfStates['KY']
puts prePreppedExampleOfStates['TX'] # This will return nil

shoes = {
  'summer' => 'sandals',
  'winter' => 'boots'
}

puts shoes.fetch('summer')
# puts shoes.fetch("hiking")

# 'Rocket' syntax
american_cars = {
  chevrolet: 'Corvette',
  ford: 'Mustang',
  dodge: 'Ram'
}
# 'Symbols' syntax
japanese_cars = {
  honda: 'Accord',
  toyota: 'Corolla',
  nissan: 'Altima'
}

puts american_cars[:ford]    #=> "Mustang"
puts japanese_cars[:honda]   #=> "Accord"

# iterating_over_hashes.rb

person = { name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown' }

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting('Bob')
greeting('Bob', { age: 62, city: 'New York City' })

def even_odd(number)
  return 'A number was not entered.' unless number.is_a? Numeric

  if number.even?
    'That is an even number.'
  else
    'That is an odd number.'
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd('Ruby') #=>  A number was not entered.
