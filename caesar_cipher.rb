# https://www.asciichart.com/ character codes
# .ord to convert character to char code
# .chr to convert char code to character

def caesar_cipher(str, shift)
  encrypted_string = ""

  str.chars do |char|
    char_code = char.ord

    if (char_code >= 65 && char_code <= 90) # Uppercase letter
      char_code = char_code + shift
      while (char_code > 90) # While char_code exceed the character code of 'Z'
        char_code = (char_code % 90) + 65 - 1 # Loop though 'A'
      end
    elsif (char_code >= 97 && char_code <= 122) # Lowercase letter
      char_code = char_code + shift
      while (char_code > 122)
        char_code = (char_code % 122) + 97 - 1
      end
    end

     encrypted_string += char_code.chr
  end

  encrypted_string
end

puts caesar_cipher("What a string!", 5)