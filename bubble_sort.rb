require 'pry-byebug'

def bubble_sort(array)
  (0..array.length - 3).each do |offset|
    (0..array.length - 2 - offset).each do |i|
     next unless array[i] > array[i + 1]

     temp = array[i]
     array[i] = array[i + 1]
     array[i + 1] = temp
    end
  end

  array
end
p bubble_sort Array.new(rand(10..100)) { rand 1..1000 }
