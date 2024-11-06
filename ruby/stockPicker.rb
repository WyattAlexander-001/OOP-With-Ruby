def stock_picker(prices)
  return nil if prices.length < 2

  min_price = prices[0]
  min_day = 0
  max_profit = prices[1] - prices[0]
  buy_day = 0
  sell_day = 1

  (1...prices.length).each do |current_day|
    current_price = prices[current_day]

    # Calculate current profit
    current_profit = current_price - min_price

    # Update max_profit and corresponding days if current_profit is higher
    if current_profit > max_profit
      max_profit = current_profit
      buy_day = min_day
      sell_day = current_day
    end

    # Update min_price and min_day if current_price is lower than min_price
    if current_price < min_price
      min_price = current_price
      min_day = current_day
    end
  end

  max_profit > 0 ? [buy_day, sell_day] : nil
end

def test_stock_picker
  test_cases = [
    { prices: [17, 3, 6, 9, 15, 8, 6, 1, 10], expected: [1, 4] },
    { prices: [10], expected: nil },
    { prices: [10, 9, 8, 7, 6], expected: nil },
    { prices: [1, 2, 3, 4, 5], expected: [0, 4] },
    { prices: [3, 3, 5, 0, 0, 3, 1, 4], expected: [3, 7] }, # or [4,7]
    { prices: [7, 1, 5, 3, 6, 4], expected: [1, 4] },
    { prices: [7, 6, 4, 3, 1], expected: nil },
    { prices: [1, 2], expected: [0, 1] },
    { prices: [2, 1], expected: nil }
  ]

  test_cases.each_with_index do |test_case, index|
    result = stock_picker(test_case[:prices])
    expected = test_case[:expected]
    if expected.nil?
      if result.nil?
        puts "Test Case ##{index + 1}: Passed"
      else
        puts "Test Case ##{index + 1}: Failed (Expected nil, got #{result})"
      end
    elsif result == expected || (expected.is_a?(Array) && result.is_a?(Array) && expected.sort == result.sort)
      puts "Test Case ##{index + 1}: Passed"
    else
      puts "Test Case ##{index + 1}: Failed (Expected #{expected}, got #{result})"
    end
  end
end

# Run the tests
test_stock_picker
