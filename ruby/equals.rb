a = 'abc'
b = 'abc'

puts a.equal? b # false because they are different objects than numbers
a = b
puts a.equal? b # true because they are the same object

for i in 0..5
  puts "#{i} zombies incoming!"
end
