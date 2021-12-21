require 'pry-byebug'

def substrings(word, valid_substring_array)
  valid_hash = {}
  valid_substring_array.each do |substring|
    next unless word.downcase.include? substring

    if !valid_hash[substring].nil?
      valid_hash[substring] += 1
    else
      valid_hash[substring] = 1
    end
  end
  valid_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"
p substrings word, dictionary
