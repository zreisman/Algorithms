
def quicksort!(array)
  # Base case - Array length 1 is already sorted
  return array if array.length < 2

  wall = 0
  pivot = -1

  #Partition array
  (0...array.length - 1).each do |current|
    if array[current] < array[pivot]
      
      temp = array[wall]
      array[wall] = array[current]
      array[current] = temp

      wall += 1
    end
  end

  #Swap pivot with wall
  temp = array[wall]
  array[wall] = array[-1]
  array[-1] = temp

  quicksort!(array[0...wall]).concat(quicksort!(array[wall..-1]))
end


array = [4, 3, 8, 11, 1, 52]
reversed = [8,7,6,5,4,3,2,1]
sorted = [1,2,3,4,5,6,7,8,9,10]

p quicksort!(array)
p quicksort!(reversed)
p quicksort!(sorted)
