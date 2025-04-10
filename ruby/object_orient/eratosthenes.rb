prime_numbers = []

target_list = (1..100).to_a

target_list.each do |number|
  next if number == 1

  prime_numbers << number
  target_list.reject! { |n| n % number == 0 && n != number }
  # print "#{number}, "
end

# puts prime_numbers.join(', ')
puts "#{prime_numbers.join(', ')},"
# p target_list

