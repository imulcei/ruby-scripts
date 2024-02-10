def stock_picker(stock_prices)
    best_price = 0
    best_days = [0, 0]
    (0...stock_prices.length).each do |buy|
        (buy + 1...stock_prices.length).each do |sell|
            profit = stock_prices[sell] - stock_prices[buy]
            if profit > best_price
                best_price = profit
                best_days = [buy, sell]
            end
        end
    end
    return best_days
end

result = stock_picker([17,3,6,9,15,8,6,1,10])
puts "#{result}"