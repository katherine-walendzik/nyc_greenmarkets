class NycGreenmarkets::Scraper

    def self.scrape_greenmarkets
        index_page = Nokogiri::HTML(open("https://www.grownyc.org/greenmarket/ourmarkets"))
        binding.pry
    end

end
