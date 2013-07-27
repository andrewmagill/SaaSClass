def combine_anagrams_not_accepted(words)
  hash = {}
  words.each do |word|
    key = word.downcase.chars.sort.join
    hash.has_key?(key) ? hash[key] << word : hash[key] = [word] 
  end
end

def combine_anagrams(words)
  words.group_by{|w| w.downcase.chars.sort.join}.values
end
