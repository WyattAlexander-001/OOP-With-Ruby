s = "order. wrong the in are words These"

def reverse_words(s)
  s.split(/(\s+)/).reverse!.join('')
end

puts reverse_words(s)