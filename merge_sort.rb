def merge_sort(arr)
  return arr if arr.count == 1

  first = 0
  last = arr.length - 1
  middle = arr.length / 2 - 1

  left = arr[0..middle]
  right = arr[(middle + 1)..last]


  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

def merge(left_arr, right_arr)
  answer = []

  while(left_arr.count > 0 && right_arr.count > 0)
    if left_arr[0] > right_arr[0]
      answer << right_arr.shift
    elsif right_arr[0] > left_arr[0]
      answer << left_arr.shift
    end
  end

  while(left_arr.count > 0)
    answer << left_arr.shift
  end

  while(right_arr.count > 0)
    answer << right_arr.shift
  end

  return answer

end


p merge_sort([2, 1, 3, 8, 0, 9, 54])
