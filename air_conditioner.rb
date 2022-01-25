input_lines = readlines

room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i
blow = input_lines[2].to_i

temperature_diff = ( room - air_conditioner ).abs

require_time = 0

if temperature_diff < 5
  require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
  require_time = 30
elsif temperature_diff >= 10 then
  require_time = 60
end

case blow
when 1 then
  require_time
when 2 then
  require_time -= 5
when 3 then
  require_time -= 10
else
  p "風量の値は1~3にしてください"
  exit
end

# if blow == 1
#   require_time -= 0
# elsif blow == 2 then
#   require_time -= 5
# elsif blow == 3 then
#   require_time -= 10
# else
#   puts "風量の値は1~3にしてください"
# end

p require_time