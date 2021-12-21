require 'pry-byebug'

def stock_picker(stock_prices)
  result_array = Array.new 2, 0
  (0..stock_prices.length - 2).each do |i|
    (i + 1..stock_prices.length - 1).each do |j|
      next unless stock_prices[j] - stock_prices[i] > stock_prices[result_array[1]] - stock_prices[result_array[0]]

      puts "Index: #{i} Price: #{stock_prices[i]}\nIndex: #{j} Price: #{stock_prices[j]}"
      result_array[0] = i
      result_array[1] = j
    end
  end
  result_array
end

random_array = Array.new(rand 1..1000) { rand(0..100) }

p stock_picker random_array
