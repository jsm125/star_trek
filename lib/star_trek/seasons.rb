class StarTrek::Seasons
  attr_accessor :name, :series, :episodes
  @@all = []
  
  def initialize(name, series)
    @name = name
    @series = series
    save
  end
  
  def self.all
    @@all
  end 
  
  def save
    @@all << self
  end
end