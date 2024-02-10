dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    substring_hash = Hash.new(0) 
    word = word.downcase
    dictionary.each do |mot|
        mot = mot.downcase
        if word.include?(mot)
            substring_hash[mot] += 1
        end
    end
    return substring_hash
end

substring = substrings("below", dictionary)
puts "#{substring}"