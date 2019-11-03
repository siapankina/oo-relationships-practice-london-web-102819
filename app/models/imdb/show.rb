class Show
  attr_reader :show_name, :episodes

  def initialize(show_name, episodes)
    @show_name = show_name
    @episodes = episodes
  end

  def on_the_big_screen
    array_total=[]
    Character.all.each { |ch|
      array =ch.movies.select { |m|
        m.movie_name == self.show_name
      }
      array.each{|el| array_total<< el}
    }
    array_total.uniq
  end

end
