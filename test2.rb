# -*- coding: utf-8 -*-
require 'rubygems'
require 'nokogiri'
require 'open-uri'

listURLBase = 'http://sad.osa.ntu.edu.tw/newsite/scholar_list.php?nowpage='
detailURLBase = 'http://sad.osa.ntu.edu.tw/newsite/'

class Scholarship
  attr_accessor :link, :name, :requirements

  def initialize(link, name)
    @link = link
    @name = name
    
  end

  def to_s
    title = "== " + @name + " (" + @link + ") ==\n"
    title + @requirements.to_s + "\n"
  end
end

class Requirement
  attr_accessor :year, :deadline, :addr, :attachment, :prize, :max, :applicant
  attr_accessor :desc1, :desc2

  def to_s
    result = ""
    result += "year: " + @year
    result += "\ndeadline: " + @deadline
    result += "\naddr: " + @addr
    result += "\nattachment: " + @attachment
    result += "\nprize: " + @prize
    result += "\nmax: " + @max
    result += "\napplicant: " + @applicant
    result += "\nDesc1: "
    desc1.each do |x|
      result += "\n" + x
    end
    result += "\nDesc2: "
    desc2.each do |x|
      result += "\n" + x
    end
    result
  end
end

scholarships = []

#get scholarship title and link from the list
page = 1
puts "Let's fetch all the titles from the list! =="
begin 
  doc = Nokogiri::HTML(open(listURLBase + page.to_s))
  page += 1
  count = 0
  
  doc.css('a.table002').each do |link|
    puts link.content
    scholarships.push( Scholarship.new(link["href"], link.content) )
    count += 1
  end

end while count > 0
puts "Done!! ====================================="

puts "\nNow let's get each scholarship's requirements! =="
scholarships.each do |s|
  doc = Nokogiri::HTML(open(detailURLBase + s.link))
  contentTable = doc.css("div.table002")

  puts s.link
  req = Requirement.new
  
  # get year requirement
  requirements1 = contentTable.css("td.table001")
  req.year = requirements1[0].content
  
  # get requirements2
  requirements2 = contentTable.css("td.table002")
  req.deadline = requirements2[0].content
  req.addr = requirements2[2].content
  req.attachment = requirements2[3].content
  req.prize = requirements2[4].content
  req.max = requirements2[5].content
  req.applicant = requirements2[6].content

  # get first description paragraph
  requirements3 = requirements1.css("span")
  desc1 = []
  requirements3.each do |x|
    desc1.push(x.content)
  end
  req.desc1 = desc1
  
  # get second description paragraph
  requirements4 = contentTable.css("td.option001 span")
  desc2 = []
  requirements4.each do |x|
    desc2.include?(x.content) ? "" : desc2.push(x.content)
  end
  req.desc2 = desc2

  s.requirements = req
end
puts "Done !! ============================================"

puts "\nNow lets check if we got the requirements right:"
(0..300).each do |i|
  puts scholarships[i].prize
end

