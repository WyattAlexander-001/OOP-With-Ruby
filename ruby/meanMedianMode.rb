testArr = [100, 33, 55, 78, 982, 321, 12, 345,44,44,44,23,1223,455,2]

def mean(arr)
  arr.sum / arr.length
end

def median(arr)
  return nil if arr.empty?
  arr.sort!
  m_pos = arr.length / 2
  return arr.size % 2 == 1 ? arr[m_pos] : (arr[m_pos - 1] + arr[m_pos]) / 2
end

puts mean(testArr)
puts median(testArr)