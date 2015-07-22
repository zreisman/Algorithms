def merge_sort(array)
  return array if array.length < 2

  mid = array.length / 2
  left = array[0...mid]
  right = array[mid...array.length]

  merge(merge_sort(left), merge_sort(right))

end

def merge(arr1, arr2)
  output = []

  until arr1.empty? || arr2.empty?

    # Assumes a dynamic array with O(1) shift
    if arr1[0] < arr2[0]
      output << arr1.shift
    else
      output << arr2.shift
    end
  end

  output.concat(arr1).concat(arr2)
end


array = [4, 3, 8, 11, 1, 52]
reversed = [8,7,6,5,4,3,2,1]
sorted = [1,2,3,4,5,6,7,8,9,10]

p merge_sort(array)
p merge_sort(reversed)
p merge_sort(sorted)
