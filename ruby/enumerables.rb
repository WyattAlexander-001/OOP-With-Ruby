friends = %w[Sharon Leo Leila Brian Arun]
friends.reject! { |friend| friend == 'Brian' }

friends.each { |friend| puts 'Hello, ' + friend }

friends = %w[Sharon Leo Leila Brian Arun]

upcaseFriends = friends.map { |friend| friend.upcase }
puts upcaseFriends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
