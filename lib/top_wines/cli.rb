class TopWines::CLI
    
    def call
        TopWines::Scraper.scrape_wines
        puts "\nWelcome to Wine Spectator's Top 100 Wines of 2020!" 
        start
    end

    def start
        puts "\nPlease select the group of wines you would like to see: \n1-20 \n21-40 \n41-60 \n61-80 \n81-100" 
        input = gets.strip.to_i

        print_wines(input)

        puts "Select the corresponding number of the wine of your choice for more details"
        input = gets.strip

        wine = TopWines::Wine.find(input.to_i)

        print_wine(wine)

        puts "Would you like to view another wine? Enter Y or N"

        input = gets.strip.downcase
        if input == "y"
            start
        elsif input == "n"
            puts ""
            puts "Thank you! Have a great day!"
            exit
        else
            puts ""
            puts "I don't understand that answer."
            start
        end
    end

    def print_wine(wine)
        puts "#{wine.rank}. #{wine.winery} #{wine.name}"
        puts "Rank: #{wine.rank}"
        puts "Winery: #{wine.winery}"
        puts "Name: #{wine.name}"
        puts "Vintage: #{wine.vintage}"
        puts "Score: #{wine.score}"
        puts "Price: #{wine.price}"
        puts "Full Description: #{wine.full_description}"
    end

    def print_wines(from_number)
        puts "Wines ranked #{from_number} - #{from_number+19}"
        TopWines::Wine.all[from_number-1, 20].each.with_index(from_number) do |wine, index|
            puts "#{index}. #{wine.winery} - #{wine.name}"
        end
    end

end







    #def list_wines # (input arg)
    #    TopWines::Wine.all.each.with_index(1) do |wine, i|
    #        puts "#{i}. #{wine.winery} #{wine.name}"
    #    end
    #end


        #@groups = ["1-20", "21-40", "41-60", "61-80", "81-100"]

        #@groups.each.with_index(1) do |group, index| 
        #    puts "#{index}. #{group}"
        #end

    #def get_user_input
    #    chosen_group = gets.strip.to_i
    #    list_wines(chosen_group) if valid_input(chosen_group, @groups)
    #end

    #def valid_input(input, data)
    #    input.to_i <= data.length && input.to_i > 0
    #end 

    #def list_wines(chosen_group)
    #    group = @groups[chosen_group - 1]
    #    puts "\nWines ranked #{group}:"
    #end