card_number = "5541808923795240"

card_number_split = card_number.split('')
card_to_a = []
card_number_split.each do |digit|
  card_to_a << digit.to_i
end

card_arr_doubled =[]

card_to_a.count.times do |i|
  if i.even?
    card_arr_doubled << card_to_a[i] * 2
  else
    card_arr_doubled << card_to_a[i]
  end
end
card_arr_transformed = card_arr_doubled.map do |digit|
  if digit > 9
    digit.to_s[0].to_i + digit.to_s[1].to_i
  else
    digit
  end
end

card_accum = card_arr_transformed.reduce(0) do |sum, digit|
  sum + digit
end


if card_accum % 10 == 0
  true
else
  false
end
