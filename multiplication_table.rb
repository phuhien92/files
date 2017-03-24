def multiplicationTable(number)
  table = "     "
  (1..number).each do |i|
    table += "#{pad(i)}"    
  end
  
  table += "\n----+"
  (1..number).each do |i|
    table += "----"    
  end
  
  table += "\n"
  (1..number).each do |i|
      table += "#{pad(i)}|"
      (1..number).each do |j|
        table += pad(i*j)        
      end
      table+="\n"
  end
  
  return table
end

def pad(x)
  str = " #{x}"
  if x < 10
    str = "   #{x}"
  elsif x < 100
    str = "  #{x}"
  end 
  
  return str
end

puts multiplicationTable(12)