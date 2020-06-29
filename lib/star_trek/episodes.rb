class StarTrek::Episodes
  attr_accessor :name, :seasons, :series
  @@all = []
  
  def initialize(name, seasons)
    @name = name
    @seasons = seasons
    save
  end
  
  def self.all
    @@all
  end 
  
  def save
    @@all << self
  end
end