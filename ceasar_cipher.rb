def ceasar_cipher(string, shift)
  array = string.split("").map do |letter|

    if 'a'.ord <= letter.ord && letter.ord <= 'z'.ord
      letter = ((letter.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    elsif 'A'.ord <= letter.ord && letter.ord <= 'Z'.ord
      letter = ((letter.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    elsif '0'.ord <= letter.ord && letter.ord <= '9'.ord
      letter = ((letter.ord - '0'.ord + shift) % 10 + '0'.ord).chr
    else
      letter
    end
  end
  array.join('')
end

puts ceasar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"
puts ceasar_cipher("monkey de luffy king o f the pirates!", 1)