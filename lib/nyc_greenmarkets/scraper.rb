class NycGreenmarkets::Scraper

    def self.scrape_boroughs
        doc = Nokogiri::HTML(open("https://top100.winespectator.com/lists/"))
        #wine_name_and_vintage = doc.css("div.table-name span.wineName")[0].text
        #wine_score = doc.css("td.score")[0].text
        #wine_price = doc.css("td.price")[0].text
        #wine_full_description = doc.css("div.tabel-note")[0].text
        binding.pry
    end

    def self.scrape_greenmarketsq

    end

   
end
