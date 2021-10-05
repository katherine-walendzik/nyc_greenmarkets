class TopWines::Wine
    attr_accessor :rank, :winery, :name, :vintage, :score, :price, :full_description

    @@all = []

    def initialize(att_hash)
        #@rank = att_hash[:rank]
        #@winery = att_hash[:winery]
        #@name = att_hash[:name]
        #@vintage = att_hash[:vintage]
        #@score = att_hash[:score]
        #@price = att_hash[:price]
        #@full_description = att_hash[:full_description]

        att_hash.each do |key, value|
            self.send("#{key}=", value)
        end

        self.save
    end

    def save
        @@all << self
        self
    end

    def self.all
        @@all
    end

end