class TopWines::CLI
    
    def call
        puts "\nWelcome to Wine Spectator's Top 100 Wines of 2020!" 
        start
        get_user_input
        list_wines
        TopWines::Scraper.scrape_wines
    end

    def start
        puts "\nPlease select the group of wines you would like to see:" 

        @groups = ["1-20", "21-40", "41-60", "61-80", "81-100"]

        @groups.each.with_index(1) do |group, index| 
            puts "#{index}. #{group}"
        end
    
        #get user input
    end

    def get_user_input
        chosen_group = gets.strip.to_i
        list_wines(chosen_group) if valid_input(chosen_group, @groups)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end 

    #def list_wines(chosen_group)
    #    group = @groups[chosen_group - 1]
    #    puts "\nWines ranked #{group}:"
    #end

end