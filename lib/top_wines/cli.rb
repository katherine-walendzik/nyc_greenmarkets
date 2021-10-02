class TopWines::CLI
    
    def call
        puts "\nWelcome to Wine Spectator's Top 100 Wines of 2020!" 
        start
    end

    def start
        puts "\nPlease select the group of wines you would like to see: 1-20, 21-40, 41-60, 61-80, 81-100"
        #scrape data
        @boroughs = TopWines::Borough.all
        #["Manhattan", "Brooklyn", "Queens", "Bronx", "Staten Island"]
        @boroughs.each.with_index(1) do |borough, index|
            puts "\n#{index}. #{borough.name}"
        end
    end

    def get_user_borough
        chosen_borough = gets.strip.to_i
        list_greenmarkets(chosen_borough) if valid_input(chosen_borough.to_i, @boroughs)
    end

    def valid_input(input, data)
        if input.to_i <= data.length && input.to_i > 0
    end

    def list_greenmarkets(chosen_borough)
        borough = @boroughs[chosen_borough - 1]
        puts "\nGreenmarkets in #{borough}:"
        end
    end

end