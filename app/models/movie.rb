class Movie
  attr_reader :movie_name
  attr_accessor :characters, :actors

  def initialize(movie_name)
    @movie_name = movie_name
    @actors = []
    @characters = []
  end

 
  def self.most_actors
    movie_most_actors = nil
    number_of_actors = 0

    Character.all.each { |ch|
      ch.movies.each { |m|
        if number_of_actors < m.actors.length
          number_of_actors = m.actors.length
          movie_most_actors = m
        end
      }
    }
    movie_most_actors
  end
end
