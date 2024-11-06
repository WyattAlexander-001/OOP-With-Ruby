begin
  puts 10 / ''
rescue ZeroDivisionError
  puts "Can't divide by zero!"
rescue TypeError => e
  puts e
end
