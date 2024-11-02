module Cute
  module Lines
    def flirt name
      puts "Hey, what's up #{name * Math.sqrt(25)}?"
    end
    def insult name
      puts "Hey, what's your deal #{name * Math.sqrt(25)}?"
    end
    def compliment name
      puts "Hey, you're looking good #{name * Math.sqrt(25)}!"
    end
  end
end

include Cute::Lines # This is how you include a module

Cute.flirt "Wyatt" # This is how you call a method from a module