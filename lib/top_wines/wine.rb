class TopWines::Wine
    attr_accessor :rank, :winery, :name, :vintage, :score, :price, :full_description

    @@all = []

    def initialize
        @rank = rank
        @winery = winery
        @name = name
        @vintage = vintage
        @score = score
        @price = price
        @full_description = full_description

        TopWines::Wine.all.each.with_index(1) do |wine, index|
            puts "#{index}. #{wine.winery} #{wine.name}"
        end

        @@all << self
    end

    def self.all
        @@all
    end

end