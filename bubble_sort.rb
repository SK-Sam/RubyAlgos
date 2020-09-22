arry = [8, 6, 9, 24, 0, 22]


def bubble_sort(arr)
  num_iterations = arr.length - 1
  arr_transformed = arr

  loop do
    arr_truths = []
    num_iterations.times do |i|
      if arr_transformed[i] > arr_transformed[i+1]
        arr_transformed[i], arr_transformed[i+1] = arr_transformed[i+1], arr_transformed[i]
        arr_truths << false
      else
        arr_truths << true
      end
    end
    break if arr_truths.all?(true) && arr_truths.count == num_iterations
  end
arr_transformed
end

p bubble_sort(arry)
