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

        @@all << self
    end

    def self.all
        @@all
    end

end