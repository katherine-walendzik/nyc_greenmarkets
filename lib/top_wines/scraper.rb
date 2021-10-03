class TopWines::Scraper

    def self.scrape_wines
        doc = Nokogiri::HTML(open("https://top100.winespectator.com/lists/"))
        binding.pry
    end

end