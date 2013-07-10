# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

require 'json'

#scholarships = [{:name => '觀世音獎學金', :year => 102, :prize => 100000}, 
#	            {:name => '媽祖獎學金'}]

scholarships = JSON.parse(File.read("db/data.json"))

scholarships.each do |s|
	Scholarship.create!(s)
end