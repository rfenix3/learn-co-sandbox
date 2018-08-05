require 'pry'
require_relative 'animal_scraper'

class Animal
  
  attr_accessor :name, :kingdom, :klass
  
  @@all = []
  
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.new_from_wikipedia(url)

    animal = Animal.new
    
    properties = AnimalScraper.wiki(url)


    properties.each do |k, v|
      animal.send("#{k}=", v)      
    end

    animal
    
  end
end

# binding.pry

hippo = Animal.new_from_wikipedia("https://en.wikipedia.org/wiki/Hippopotamus")
puts hippo.inspect


    #name = doc.search('h1#firstHeading').text
    #doc.css("table.infobox.biota tr td").text
    # doc.css("table.infobox.biota a")
    #kingdom = doc.css("table.infobox.biota a[title='Animal']").text
    #class = doc.css("table.infobox.biota a[title='Mammal']").text
    # image link: project.css("div.project-thumbnail a img").attribute("src").value
    
