thisWillFail = "Muay Thai"
puts thisWillFail.reverse
thisWillFail = nil
puts thisWillFail.reverse

# /Users/absinthe/repos/OOP-With-Ruby/nil.rb:4:in `<main>': undefined method `reverse' for nil (NoMethodError)
# rb:4 is the line number and tells you where the error is