class StarTrek::CLI 
  def greeting
    puts "Welcome to the Star Trek Non Cinematic Universe!"
    get_listed_series
    get_user_series
    # get_seasons_for(series)
    # list_seasons
    # get_episodes(season)
    # List_episode
  end
  
  
  def get_listed_series
    @series = ['Star Trek: Discovery', 'Star Trek: The Animated Series', 'Star Trek: The Original Series', 'Star Trek: Enterprise', 'Star Trek: Voyager', 'Star Trek: Deep Space Nine', 'Star Trek: The Next Generation']
  end

  def get_user_series
    # list series 
    @series.each.with_index(1) do |series, index|
      puts "#{index}. #{series}"
    end
  end
end
