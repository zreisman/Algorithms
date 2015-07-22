def bubble_sort(array)  # O(n2)

  (array.length).times do |pass|
    (1...array.length - pass).each do |idx|
      if array[idx] < array[idx - 1]
        temp = array[idx]
        array[idx] = array[idx - 1]
        array[idx - 1] = temp
      end
    end
  end

  array
end


array = [4, 3, 8, 11, 1, 52]
reversed = [8,7,6,5,4,3,2,1]
sorted = [1,2,3,4,5,6,7,8,9,10]

p bubble_sort(array)
p bubble_sort(reversed)
p bubble_sort(sorted)
