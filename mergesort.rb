


def merge(array1,array2)
  if array1.empty?
    return array2
  elsif array2.empty?
    return array1
  elsif array1.first < array2.first
    return [array1.first].concat(merge(array1.drop(1),array2))
  else
    return [array2.first].concat(merge(array1,array2.drop(1)))
  end
end

def mergesort(array)
  # puts array.inspect
  if array.length >= 2
    midpoint = (array.length/2).floor
    left_slice = array.take(midpoint)
    right_slice = array.drop(midpoint)
    left_slice = mergesort(left_slice)
    right_slice = mergesort(right_slice)
    # puts "Left slice: #{left_slice.inspect}"
    # puts "Right slice: #{right_slice.inspect}"
    sortedArray = merge(left_slice, right_slice)
    # puts "Sorted array: #{sortedArray.inspect}"
    # sortedArray
  else
    array
  end
end

puts mergesort([10,3,5,1,2,11,7,4])