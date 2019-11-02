class Character
  attr_reader :character_name, :actor, :movies, :shows

  @@all = []

  def initialize(character_name, actor, movies = [],shows=[],episodes =[])
    @character_name = character_name
    @actor = actor
    @shows =shows
    @movies = movies
    @episodes= episodes
    @episodes.each {|ep|
    ep.characters << self}
    @actor.characters << self
    @movies.each{|m|
    m.characters << self
    m.actors << actor}

    @@all << self
  end

  def total_appearances
    movie = self.movies.length
    tv = self.shows.length
    total_number = movie + tv
    return total_number
  end

  def self.most_appearances
    the_character = nil
    appearance = 0

    self.all.each { |ch|
      if appearance < ch.total_appearances
        appearance = ch.total_appearances
        the_character = ch
      end
    }
    the_character
  end

  def self.all
    @@all
  end
end
