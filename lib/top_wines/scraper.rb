class TopWines::Scraper

    def self.scrape_wines
        doc = Nokogiri::HTML(open("https://top100.winespectator.com/lists/"))
        wine_block = doc.css("tbody tr")

        wine_block.each do |block|
            wine = TopWines::Wine.new
            wine.rank = block.css(".rank").text
            wine.winery = block.css("span.sort-text").text
            wine.name = block.css("div.table-name span.wineName").children[1].text.strip
            wine.vintage = block.css(".vintage").text
            wine.score = block.css(".score").text
            wine.price = block.css(".price").text
            wine.full_description = block.css("div.tabel-note").children[0].text.strip.chomp(' —')
        end
    end
    
end