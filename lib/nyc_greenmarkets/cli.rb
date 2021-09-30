class NycGreenmarkets::CLI
    
    def call
      puts "Welcome to NYC Greenmarkets!"  
      puts "Please select the number corresponding to the borough of your choice:"
      #list boroughs as numbered list
    end

    def list_greenmarkets
        NycGreenmarkest::Greenmarkets.all.each.with_index(1) do |market, index|
            puts "#{index}. #{market}"
        end
    end

end