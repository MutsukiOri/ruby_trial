# frozen_string_literal: true

# # frozen_string_literal: true

# puts 'Kiramex'
# puts 'Ruby'
# puts '学習を始めましょう!'

# sym = :my_symbol

# puts sym

# numbers = [1, 2, 3, 4, 5]
# puts numbers[0] # => 1

# # user = {:name => "Alice", :age => 20, :email => "alice@example.com"}

# user = { name: 'Alice', age: 20 }
# puts user[:name] # => "Alice"

# num1 = 100
# num2 = 10

# # 足し算
# result1 = num1 + num2
# puts "num1 + num2 = #{result1}"

# # 引き算
# result2 = num1 - num2
# puts "num1 - num2 = #{result2}"

# # 掛け算
# result3 = num1 * num2
# puts "num1 * num2 = #{result3}"

# # 割り算
# result4 = num1 / num2
# puts "num1 / num2 = #{result4}"

# # 剰余
# result5 = num1 % num2
# puts "num1 % num2 = #{result5}"

# # for i in 1..4
# #   puts i
# # end

# # (2..20).each do |i|
# #   # 奇数だけを表示
# #   puts i if i.odd?
# # end

# (1..20).each do |i|
#   next if i.odd?

#   puts i
# end

# # FizzBuzz問題
# (1..100).each do |i|
#   if (i % 3).zero? && (i % 5).zero?
#     puts 'FizzBuzz'
#   elsif (i % 3).zero?
#     puts 'Fizz'
#   elsif (i % 5).zero?
#     puts 'Buzz'
#   else
#     puts i
#   end
# end

def divide(x, y)
  if y.zero?
    # 0で割る場合は明示的に例外を起こす
    raise ZeroDivisionError, 'ゼロ除算エラーです'
  end

  x / y
end

puts '処理開始'

begin
  puts '割り算開始'
  a = divide(10, 4)
  puts a
rescue ZeroDivisionError => e
  puts "ZeroDivisionErrorが発生: #{e.message}"
ensure
  puts '割り算終了'
end

puts '処理終了'
