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
    StarTrek::Series.new("TNG")
    StarTrek::Series.new("DS9")
    @series = StarTrek::Series.all
  end

  def list_series
    puts "\nChoose a series to see the number of seasons.\n"
    @series.each.with_index(1) do |series, index|
      puts "#{index}. #{series.name}"
    end
  end
  
  def get_user_series
    chosen_series = gets.strip.to_i
    show_seasons_for(chosen_series) if valid_input(chosen_series, @series)
  end

  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
  
  def show_seasons_for(chosen_series)
    series = @series[chosen_series - 1]
    puts "Please select a season for #{series}."
    # # To implement
    # StarTrek::Episodes.all.each.with_index(1) do | event |
    #   puts episodes.name
    # end
    # get_user_episode
  end
end
