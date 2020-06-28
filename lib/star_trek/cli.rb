class StarTrek::CLI 
  def greeting
    puts "\nWelcome to the Star Trek Non Cinematic Universe!"
    get_series
    list_series
    get_user_series
    # get_seasons_for(series)
    # list_seasons
    # get_episodes(season)
    # List_episode
  end
  
  
  def get_series
    @series = ['Star Trek: Discovery', 'Star Trek: The Animated Series', 'Star Trek: The Original Series', 'Star Trek: Enterprise', 'Star Trek: Voyager', 'Star Trek: Deep Space Nine', 'Star Trek: The Next Generation']
  end

  def list_series
    puts "\nChoose a series to see the number of seasons.\n"
    @series.each.with_index(1) do |series, index|
      puts "#{index}. #{series}"
    end
  end
  
  def get_user_series
    chosen_series = gets.strip.to_i
    # if valid_input(chosen_series, @series)
    # end
  end

  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
end
