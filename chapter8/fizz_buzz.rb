def fizz_buzz(num)
  if num%15 == 0
    "fizzbuzz"
  elsif num%3 == 0
    "fizz"
  elsif num%5 == 0
    "buzz"
  else
    num.to_s
  end
end


  puts "数字を入力してください。"
  input = gets.to_i

  puts "結果は..."
  puts fizz_buzz(input)