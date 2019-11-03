require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
    doc = Nokogiri::HTML(html)
    students = Array.new
    hash = doc.css('div.student-card')
    hash.each do |student_card|
      student = {
        name: student_card.css('h4.student-name').text,
        location: student_card.css('p.student-location').text,
        profile_url: student_card.css('a')[0].attributes['href'].value}
      students << student
    end
    students
  end

#"https://learn-co-curriculum.github.io/student-scraper-test-page/index.html" +

  def self.scrape_profile_page(profile_url)
    html = open(profile_url)
    doc = Nokogiri::HTML(html)
  end
#twitter
#linkedin
#github
#blog 
#profile_quote
#bio
end

