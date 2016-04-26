# @range in 1..1000
# @require: mutiples of 3 or 3
# @result : sum

def sum(n)
	sum = 0
	(1..(n-1)).each {|n| sum = sum + n if n%3==0 || n%5==0 }
	sum
end

puts sum(1000)