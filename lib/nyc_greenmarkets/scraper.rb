class NycGreenmarkets::Scraper

    def self.scrape_boroughs
        doc = Nokogiri::HTML(open("https://www.thesill.com/products"))
        #plant_description = doc.css("p").text
        binding.pry
    end

    def self.scrape_greenmarkets
    end

    #doc = Nokogiri::HTML(open("https://www.thesill.com/collections/live-plants"))
    #plant_name = doc.css("h3").text
    #plant_price = doc.css("div.price").text

    #doc = Nokogiri::HTML(open("https://www.thesill.com/products"))
    #plant_description = doc.css("p").text
end
