require 'nokogiri'
require 'open-uri'
require 'pry'

class AnimalScraper

  def self.wiki(url)

    doc = Nokogiri::HTML(open(url))
    animal = {}

    animal[:name] = doc.search("h1#firstHeading").text
    animal[:kingdom] = doc.css("table.infobox.biota a[title='Animal']").text
    animal[:klass] = doc.css("table.infobox.biota a[title='Mammal']").text
    
    animal
  end
  
end


