def merge_sort(array)
  return array if array.size < 2

  mid = array.size / 2

  left = merge_sort(array.slice(0, mid))
  right = merge_sort(array.slice(mid, array.size))
  
  merge(left, right)
end

def merge(left_array, right_array)
  sorted = []
  
  until left_array.empty? || right_array.empty?
    if left_array.first < right_array.first
      sorted.push(left_array.shift)
    else
      sorted.push(right_array.shift)
    end
  end

  sorted.concat(left_array).concat(right_array)
end

puts merge_sort([4, 8, 5, 7, 8, 13, 2, 9, 6, 14])