def morse_code(alpha)
  morse = {   'a' => '.-',
              'b' => '-...',
              'c' => '-.-.',
              'd' =>'-..',
              'e' => '.',
              'f' => '..-.',
              'g' => '--.',
              'h' => '....',
              'i' => '..',
              'j' => '.---',
              'k' => '-.-',
              'l' => '.-..',
              'm' => '--',
              'n' => '-.',
              'o' => '---',
              'p' => '.--.',
              'q' => '--.-',
              'r' => '.-.',
              's' => '...',
              't' => '-',
              'u' => '..-',
              'v' => '...-',
              'w' => '.--',
              'x' => '-..-',
              'y' => '-.--',
              'z' => '--..',
              ' ' => '/'
  }
  
  return (alpha) ? morse : morse.invert
end

def translate(input, morse, alpha_input_type)
  
  # Initialize array
  translation_list = Array.new
  
  # space for alpha / morse output 
  space = alpha_input_type ? '' : ' '

  # Return an empty array if input is nil 
  if input.nil?
    return translation_list  << ''
  end
  
  for char in input.split(space) 
    if morse[char] then translation_list << morse[char] end 
  end 
  
  return alpha_input_type ? translation_list.join(' ') : translation_list.join('')
end

# Grab the morse_code hash

puts translate(".... . .-.. .-.. --- / --. --- --- -..", morse_code(false),false)
puts translate("hello good", morse_code(true),true)

