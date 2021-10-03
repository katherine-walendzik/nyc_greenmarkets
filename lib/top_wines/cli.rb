class TopWines::CLI
    
    def call
        puts "\nWelcome to Wine Spectator's Top 100 Wines of 2020!" 
        start
    end

    def start
        puts "\nPlease select the group of wines you would like to see: \n1-20\n21-40\n41-60\n61-80\n81-100"
        #get user input
    end

    def get_user_input
        chosen_group = gets.strip.to_i
        list_wines(chosen_group) if valid_input(chosen_group.to_i, @group)
        #do i want a Group class?
    end

    def valid_input(input, data)
        if input.to_i <= data.length && input.to_i > 0
    end

    def list_wines(chosen_group)
        group = @group[chosen_group - 1]
        puts "\nWines ranked #{group}:"
        end
    end

end