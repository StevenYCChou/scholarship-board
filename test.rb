require 'rubygems'
require 'nokogiri'
require 'open-uri'



doc = Nokogiri::HTML(open('http://sad.osa.ntu.edu.tw/newsite/scholar_list.php?txt=&class_subitem_id=0&award_year=0&award_object=n&submit=%E7%8D%8E%E5%AD%B8%E9%87%91%E6%90%9C%E5%B0%8BGO'))

# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by css
(1..10).each do |n|
	url = 'http://sad.osa.ntu.edu.tw/newsite/scholar_list.php?nowpage='+n.to_s()+'&tenpage=1'
	# Get a Nokogiri::HTML::Document for the page we’re interested in...
	doc = Nokogiri::HTML(open(url))
	doc.css('a.table002').each do |link|
		puts link.content
	end
end

####
#Search for nodes by xpath
# doc.xpath('//h3/a').each do |link|
# puts link.content
# end

# ####
# # Or mix and match.
# doc.search('h3.r a.l', '//h3/a').each do |link|
# puts link.content
# end