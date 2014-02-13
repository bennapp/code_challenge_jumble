require 'nokogiri'
require 'open-uri'


def jumble_net_solver input
	uri = "http://anagram-solver.net/#{input}"
  	answers = []
  	doc = Nokogiri::HTML(open(uri))
	doc.css('.answers li a').each do |answer|
		answers.push answer.content
	end
	answers
end

p jumble_net_solver ARGV[0]