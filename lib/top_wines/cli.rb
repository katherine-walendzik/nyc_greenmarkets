class TopWines::CLI
    
    def call
        TopWines::Scraper.scrape_wines
        puts "\nWelcome to Wine Spectator's Top 100 Wines of 2020!".white.on_black
        start
    end

    def start
        puts "\nPlease select the group of wines you would like to see: \n1-20 \n21-40 \n41-60 \n61-80 \n81-100".black.on_light_white
        input = gets.strip.to_i

        print_wines(input)

        puts "\nPlease select the corresponding number of the wine of your choice for more details.".black.on_light_white
        input = gets.strip

        wine = TopWines::Wine.find(input.to_i)

        print_wine(wine)

        puts "\nWould you like to view another wine? Enter Y or N".black.on_light_white

        input = gets.strip.downcase
        if input == "y"
            start
        elsif input == "n"
            puts ""
            puts "\nCheers!".white.on_black
            exit
        else
            puts ""
            puts "\nI don't understand that answer.".black.on_light_white
            start
        end
    end

    def print_wines(from_number)
        puts "\nWINES RANKED #{from_number} - #{from_number+19}".black.on_light_white
        TopWines::Wine.all[from_number-1, 20].each.with_index(from_number) do |wine, index|
            puts "\n#{index}. #{wine.winery} - #{wine.name}"
        end
    end

    def print_wine(wine)
        puts "\n#{wine.rank}. #{wine.winery.upcase} - #{wine.name.upcase}".black.on_light_white
        puts "RANK: #{wine.rank}"
        puts "WINERY: #{wine.winery}"
        puts "NAME: #{wine.name}"
        puts "VINTAGE: #{wine.vintage}"
        puts "SCORE: #{wine.score}"
        puts "PRICE: #{wine.price}"
        puts "FULL DESCRIPTION: #{wine.full_description}"
    end

end