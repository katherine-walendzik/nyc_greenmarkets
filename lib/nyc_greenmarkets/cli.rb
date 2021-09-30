class NycGreenmarkets::CLI
    
    def call
        puts "\nWelcome to NYC Greenmarkets!" 
        list_boroughs 
        get_user_borough
    end

    def list_boroughs
        puts "\nPlease select the number corresponding to the borough of your choice:"
        #scrape data
        @boroughs = NycGreenmarkets::Borough.all
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