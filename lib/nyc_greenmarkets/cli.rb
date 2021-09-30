class NycGreenmarkets::CLI
    
    def call
        puts "\nWelcome to NYC Greenmarkets!" 
        list_boroughs 
    end

    def list_boroughs
        puts "\nPlease select the number corresponding to the borough of your choice:"
        #scrape data
        @boroughs = ["Manhattan", "Brooklyn", "Queens", "Bronx", "Staten Island"]
        @boroughs.each.with_index(1) do |borough, index|
            puts "\n#{index}. #{borough}"
        end
    end

    def get_user_borough
        chosen_borough = gets.strip
        
    end

    def list_greenmarkets(borough)
        NycGreenmarkest::Greenmarkets.all.each.with_index(1) do |market, index|
            puts "#{index}. #{market}"
        end
    end

end