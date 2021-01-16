def reverse(str)
  return str if str.length == 0 || str.length == 1 # Skip all the work if no point in doing any

  answer = "" # test
  char_count = str.length # 4
  idx_start_from_last_char = char_count - 1 # index 3

  (char_count).times do |counter|
    answer += str[idx_start_from_last_char - counter]
  end

  answer
end
# "test"
puts reverse("test")
puts reverse("abcdefg")
puts reverse("a b c c")
puts reverse("")