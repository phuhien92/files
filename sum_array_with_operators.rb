def solution(numbers, string)
  str = string[3..(string.length)]
  
  if numbers.size == 0 && eval(str.strip) == $sum
    return $solutions << str  
  end 
  
  numbers.size.times do |x|
    digits = numbers[0..x].join
    solution(numbers[(x+1)..(numbers.size-1)], "#{string} + #{digits}")
    solution(numbers[(x+1)..(numbers.size-1)], "#{string} - #{digits}")
  end
end

def sum_with_operators
  $solutions = []
  $sum       = 100
  $numbers   = (1..9).to_a
  
  solution($numbers, "")
  $solutions.uniq.each do |solution|
    puts solution
  end
end

sum_with_operators

