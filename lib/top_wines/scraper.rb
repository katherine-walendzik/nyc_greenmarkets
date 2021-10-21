class TopWines::Scraper
# TopWines::Scraper.scrape_wines
    def self.scrape_wines
        doc = Nokogiri::HTML(open("https://top100.winespectator.com/lists/"))
        wine_block = doc.css("tbody tr")

        wine_block.each do |block|
            wine = TopWines::Wine.new
            wine.rank = block.css(".rank").text
            wine.winery = block.css("span.wineName").text
            #block.css("span.sort-text").text
            #wine.name = block.css("div.table-name span.wineName").children[1].text.strip
            wine.vintage = block.css(".vintage").text
            wine.score = block.css(".score").text
            wine.price = block.css(".price").text
            #wine.full_description = block.css("div.tabel-note").children[0].text.strip.chomp(' —')

        
    end
    #binding.pry
end

    #wine_block = doc.css("tr td").text
    #wine_name_and_vintage = doc.css("div.table-name span.wineName")[0].text
    #wine_rank = doc.css("td.rank")[0].text
    #winery = doc.css("span.sort-text")[0].text
    #name = doc.css("div.table-name span.wineName")[0].children[1].text
        #(CHANGE WINE ARRAY LOCATION, BUT CHILD STAYS 1)
    #wine_vintage = doc.css("td.vintage")[0].text
    #wine_score = doc.css("td.score")[0].text
    #wine_price = doc.css("td.price")[0].text
    #wine_full_description = doc.css("div.tabel-note")[0].children[0].text.strip.chomp(' —')
        #(CHANGE DESC ARRAY LOCATION, BUT CHILD STAYS 0)
end