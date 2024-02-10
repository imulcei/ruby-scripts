def bubble_sort(list_of_numbers)
    list_length = list_of_numbers.length()
    return list_of_numbers if list_length <= 1
    list_sorted = false
    
    while !list_sorted
        list_sorted = true
        (0...list_length - 1).each do |element|
            if list_of_numbers[element] > list_of_numbers[element + 1]
                list_of_numbers[element], list_of_numbers[element + 1] = list_of_numbers[element + 1], list_of_numbers[element]
                list_sorted = false
            end 
        end
    end
    list_of_numbers
end

result = bubble_sort([4,3,78,2,0,2])
puts "#{result}"