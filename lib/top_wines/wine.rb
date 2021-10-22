class TopWines::Wine
    attr_accessor :rank, :winery, :name, :vintage, :score, :price, :full_description

    @@all = []

    def initialize(rank = nil, winery = nil, name = nil, vintage = nil, score = nil, price = nil, full_description = nil)
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

    def self.find(id)
        self.all[id-1]
    end

end