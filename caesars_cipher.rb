#the function takes in a string and shifts each letter
def caesar_cipher(string, factor)
  string_chars = string.split(" ").map{|word| word.split("").map do |char|
      if char.ord.between?(65,91)
        ((((char.ord - 65 + factor) % 26) + 65).chr)
      elsif char.ord.between?(97,123)
        ((((char.ord - 97 + factor) % 26) + 97).chr)
      end
  end
  }
  puts string_chars.map{|word| word.join("")}.join(" ")
end

caesar_cipher("The quick brown fox jumps over the lazy dog", 13)
