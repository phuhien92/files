def sum(n)
	sum = 0
	n.times do |num|
		sum = sum + num if num%3==0 || num%5==0
	end
	sum
end

puts sum(1000)
