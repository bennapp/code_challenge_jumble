dictionary_hash = {}

File.open('dictionary_hash', 'r') do |file|  
	dictionary_hash = Marshal.load(file)
end

p dictionary_hash[ARGV[0].chars.sort.join]