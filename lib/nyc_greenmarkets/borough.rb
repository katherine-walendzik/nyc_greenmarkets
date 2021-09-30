class NycGreenmarkets::Borough
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        NycGreenmarkets::Scraper.scrape_boroughs if @@all.empty?
        @@all
    end

end