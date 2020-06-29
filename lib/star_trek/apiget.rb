class StarTrek::Apiget 
  
  def self.get_series
    series = RestClient.get('http://stapi.co/api/v1/rest/series/search')
    @series = JSON.parse(series)
    @series.each do |series|
      name = series.text
      StarTrek::Series.new(name)
      puts name
    end
  end
  
  
  
  def self.get_seasons(series)
    StarTrek::Seasons.new("Favorite Episode", series)
    StarTrek::Seasons.new("Least Favorite Episode", series)
  end 
  
  def self.get_episodes(episodes)
    
  end



end