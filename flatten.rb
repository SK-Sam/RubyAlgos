# def flatten(arr)
#   answer = []
#   (arr.count).times do |counter|
#     if arr[counter].respond_to? :each
#       (arr[counter].count).times do |counter2|
#         answer << (arr[counter])[counter2]
#       end
#     else
#       answer << arr[counter]
#     end
#   end
#   answer
# end

# puts flatten([1, 2, 3, [4, 5]])

# Iterate through each element
# If is array, repeat itself(function) until it hits the inner most array element
  # Return each function call as one array and append it to an answer to return to outer calls
  # Iterate through final call of flatten since it should be at most, the original array and the array created from recursion
    # Append each element to TRUE answer array
# If not, simply append to TRUE answer array

def flatten(arr)
  return arr if arr.count == 0
  answer = []
  (arr.count).times do |counter|
    if arr[counter].respond_to? :each # Duck typing preferred in Ruby?
      inner_array = flatten(arr[counter])
      (inner_array.count).times do |counter_inner|
        answer << inner_array[counter_inner]
      end
    else
      answer << arr[counter]
    end
  end
  answer
end

# answer = flatten([1, 2, 3, [4, 5]])
# puts answer # check elements

# # check if each element is NOT an array
# answer.each do |ele|
#   puts ele.class
# end

# answer = flatten([1, 2, 3, [4, 5, [6, 7]]])
# puts answer # check elements

# # check if each element is NOT an array
# answer.each do |ele|
#   puts ele.class
# end

answer = flatten([1, 2, 3, [4, 5, [6, 7]], [8, 9]])
# [1, 2, 3, 4, 5, 6, 7, 8, 9]
#puts answer # check elements

# check if each element is NOT an array
answer.each do |ele|
  puts ele.class
  puts ele
end

# Edge cases
puts flatten([]).count # should be 0
puts flatten([]).class # should be returning array
puts flatten([1])