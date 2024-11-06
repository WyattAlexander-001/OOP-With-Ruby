# Oh boy, math! Yeah this is the basic stuff everyone does to learn syntax, so let's get to it.
def add(a, b)
  # return the result of adding a and b
  a + b
end

# Ok so it's like visual basic, but with a different syntax. I can do this.
# In basic the syntax for a function would be:
# Function add(a as Integer, b as Integer) as Integer
# add = a + b
# End Function

def subtract(a, b)
  # return the result of subtracting b from a
  a-b
end

def multiply(a, b)
  # return the result of multiplying a times b
  a*b
end

def divide(a, b)
  # return the result of dividing a by b
  a/b
end

def remainder(a, b)
  # return the remainder of dividing a by b using the modulo operator
  a%b
end

def float_division(a, b)
  # return the result of dividing a by b as a float, rather than an integer
  a.to_f/b # I don't need to convert b to a float because it will automatically convert to a float if a is a float.
end

def string_to_number(string)
  # return the result of converting a string into an integer
  string.to_i
end

def even?(number)
  # return true if the number is even (hint: use integer's even? method)
  number.even? # this seems like cheating but I'll take it.
end

def odd?(number)
  # return true if the number is odd (hint: use integer's odd? method)
  number.odd? # same as above, but I'll take it.
end
