class NycGreenmarkets::CLI
    
    def call
        puts "Welcome to NYC Greenmarkets!" 
        list_borough 
    end

    def list_borough
        puts "Please select the number corresponding to the borough of your choice:"
        #scrape data
        @boroughs = ["Manhattan", "Brooklyn", "Queens", "Bronx", "Staten Island"]
        @boroughs.each.with_index(1) do |month, index|
            puts "#{index}. #{month}"
        end
    end

    def get_borough
    
    end

    def list_greenmarkets(borough)
        NycGreenmarkest::Greenmarkets.all.each.with_index(1) do |market, index|
            puts "#{index}. #{market}"
        end
    end

end