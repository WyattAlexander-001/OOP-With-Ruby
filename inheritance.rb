class Chef
  def make_chicken
    puts "The chef makes chicken"
  end

  def make_salad
    puts "The chef makes salad"
  end

  def make_special_dish
    puts "The chef makes the generic meal of the day"
  end

end

class ItalianChef < Chef
  def make_special_dish
    puts "The chef makes eggplant parm his specialty! As HE IS ITALIAN"
  end

  def make_pasta
    puts "The chef makes pasta"
  end
end

chef = Chef.new()
chef.make_chicken
chef.make_special_dish

puts "-----------------"
# chef.make_pasta # This will not work as the Chef class does not have the make_pasta method
puts "-----------------"

italian_chef = ItalianChef.new()
italian_chef.make_chicken
italian_chef.make_pasta
italian_chef.make_special_dish

# Output:
# The chef makes chicken
# The chef makes chicken
# The chef makes pasta
# The chef makes eggplant parm

# Explanation:
# In this example, we have a Chef class and an ItalianChef class. The ItalianChef class inherits from the Chef class. This means that the ItalianChef class has access to all the methods in the Chef class. In this case, the ItalianChef class has the make_chicken, make_salad, and make_special_dish methods from the Chef class, as well as its own make_pasta method. When we create an instance of the ItalianChef class, we can call all of these methods on that instance. If a method is defined in both the Chef class and the ItalianChef class, the method
