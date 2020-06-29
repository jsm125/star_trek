class StarTrek::Series
  attr_accessor :name, :seasons, :episodes
  @@all = []
  
  def initialize(name)
    @name = name
    @seasons = []
    save
  end
  
  def self.all
    StarTrek::Apiget.get_series if @@all.empty?
    @@all
  end
  
  def seasons
    StarTrek::Apiget.get_seasons if @seasons.empty?
    @seasons
  end

  def episodes
    StarTrek::Apiget.get_episodes if @episodes.empty?
    @episodes
  end
  
  def save
    @@all << self
  end
end