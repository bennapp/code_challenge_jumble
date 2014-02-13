word_list = File.open("words", "r").read.split("\n").compact
word_hash = {}

word_list.each do |word|
	key = word.chars.sort.join
	if !(word_hash.has_key? key)
		word_hash.store(word.chars.sort.join, [word])
	else
		word_hash[key].push word
	end
end

File.open('dictionary_hash', 'w') do |file|  
	Marshal.dump(word_hash, file)
end