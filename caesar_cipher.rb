puts "Write your message."
string = gets.chomp

puts "Enter the offset between 0 and 26."
number = gets.chomp.to_i

def caeser_cipher(text, offset)
    encrypted_text = ""
    text.each_char do |caractere|
        if caractere.match(/[a-z]/)
            offset_char = ((caractere.ord - 97 + offset) % 26 + 97).chr
            encrypted_text << offset_char
        elsif caractere.match(/[A-Z]/)
            offset_char = ((caractere.ord - 65 + offset) % 26 + 65).chr
            encrypted_text << offset_char
        else 
            encrypted_text << caractere
        end
    end
    return encrypted_text
end

message = caeser_cipher(string, number)
puts "Your encrypted message: #{message}"