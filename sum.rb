# @range in 1..1000
# @require: mutiples of 3 or 3
# @result : sum

def sum(n)
  return (1..(n-1)).inject(0) { |sum,number| (number%3==0 || number%5==0) ? sum + number : sum }
end

puts sum(1000)
