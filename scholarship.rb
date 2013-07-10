# -*- coding: utf-8 -*-

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
  attr_accessor :year, :deadline, :addr, :attachment, :max, :applicant
  attr_accessor :desc1, :desc2
  attr_accessor :prize

  def to_s
    result = ""
    result += "year: " + @year
    result += "\ndeadline: " + @deadline
    result += "\naddr: " + @addr
    result += "\nattachment: " + @attachment
    result += "\nprize: " + @prize.to_s
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

  def get_prize_from (text)
    puts text
    @prize= 
    case text
      when /(\d+)萬/
        $1.to_i*10000
      when /(\d+)千/
        $1.to_i*1000
      when /((\d{0,3},*\d{3})|\d{1,3})元/
        $1.gsub(",","").to_i
      else
        0
    end
  end
end

