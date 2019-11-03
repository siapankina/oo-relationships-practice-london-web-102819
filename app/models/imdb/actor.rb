class Actor
  attr_reader :actor_name
  attr_accessor :characters
  @@all = []

  def initialize(actor_name)
    @actor_name = actor_name
    @characters = []
    @@all << self
  end

  def self.most_characters
    the_actor = nil
    most_dif_characters = 0
    self.all.each { |actor|
      if most_dif_characters < actor.characters.length
        most_dif_characters = actor.characters.length
        the_actor = actor
      end
    }
    the_actor
  end
  def self.all
    @@all
  end
end
