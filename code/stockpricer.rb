# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(days)
  result = []

  highest_result = 0
  days.each_with_index do |buy_price, buy_day|

    for sell_day in (buy_day + 1)..(days.length - 1) do
     
      profit = days[sell_day] - buy_price
      if profit > highest_result 
        result[0] = buy_day
        result[1] = sell_day

        highest_result = profit
        p "Highest profit: #{profit} when buying on day #{buy_day} and selling on #{sell_day}"
      end

    end

  end

  result
end