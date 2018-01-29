class CreditCheck

card_number = "4929735477250543"

 valid = false
card_numbers = card_number.split("").reverse()
# puts "#{card_numbers}"

# puts card_numbers.last
 def self.find_every_other_number(card_numbers)
 # selected_numbers=(n - 1).step(card_numbers.size - 1, n).map { |i| card_numbers[i].to_i * 2 }
selected_numbers = card_numbers.map.with_index{|v,i| i % 2 == 0 ? v.to_i : v.to_i * 2 }

puts "selected numbers #{selected_numbers}"
return selected_numbers
end

def self.find_summed_digits(selected_numbers)
summed_digits = selected_numbers.map {
  |x|
  result = 0
  if x > 9
    sum = "#{x}".split("")
    result = sum[0].to_i + sum[1].to_i
  else
    result = x
end

result
 }

return summed_digits

 end

def self.results_summed(summed_digits)
puts "sum_digits #{summed_digits}"
sum = summed_digits.inject(0){|sum,x| sum + x }


return sum

end

def self.valid(total)
  puts "total #{total}"
  if total % 10 == 0
    puts "card is valid"
    true
  else
    puts "card is invalid"
    false
  end

end



sel_num = find_every_other_number(card_numbers)
sum_digits = find_summed_digits(sel_num)
total = results_summed(sum_digits)
valid(total)
end

# # Output
# ## If it is valid, print "The number is valid!"
# ## If it is invalid, print "The number is invalid!"






# split_number = card_number.chars.map { |num| num.to_i}
# card_
#
#
# two_times_every_other_number = []
# split_number.each_with_index do |num, index|
#   if index.even?
#     two_times_every_other_number << num * 2
#   else
#     two_times_every_other_number << num
#   end
# end
#
# added_numbers = two_times_every_other_number.map do |num|
#   if num > 9
#     num - 9
#   else
#     num
#   end
# end
#
# results_added = added_numbers.inject(&:+)
#
# if results_added % 10 == 0
#   puts "the number is valid"
# else
#   puts "The number is valid"
# end
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# # card_number = "4929735477250543"
# #
# # valid = false
#
#
#
# # Output
# ## If it is valid, print "The number is valid!"
# ## If it is invalid, print "The number is invalid!"
