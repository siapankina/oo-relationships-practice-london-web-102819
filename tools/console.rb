require "pry"
require "pry-nav"
require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# puts 'CHECKING IMDB LAB'

# act1 = Actor.new("Daniel R.")
# act2 = Actor.new("Emma W.")
# mv1 = Movie.new("Harry Potter")
# mv2 = Movie.new("Harry Potter 2")
# mv3 = Movie.new("Harry Potter 3")
# mv4 = Movie.new("Beauty and the Beast")
# mv5 = Movie.new("Beauty")

# ch1 = Character.new("Harry Potter", act1, [mv1, mv2, mv3])
# ch2 = Character.new("Hermiona", act2, [mv1, mv2, mv3])
# ch3 = Character.new("Bell", act2, [mv4])
# ch4 = Character.new("Hanna", act2, [mv5])

# sh1 = Show.new("Beauty", ["first day"])
# sh2 = Show.new("Beauty", ["second day"])

# puts "checking most_characters"
# puts Actor.most_characters.actor_name
# puts ""
# puts "checking self.all on Actor class"
# Actor.all.each { |actor| puts actor.actor_name }
# puts ""
# puts "checking total+appearances"
# puts ch1.total_appearances
# puts ""
# puts "checking self.most_appearances"
# puts Character.most_appearances.character_name
# puts ""
# puts "checking class Movie most actors"
# puts Movie.most_actors.movie_name
# puts ""
# puts "checking class Show, on_the_big_scree"

# puts sh1.on_the_big_screen
# sh1.on_the_big_screen.each { |m| puts m.movie_name }

# binding.pry
0

puts "<==== CHECKING GYM LAB ====>"
cl1 = Client.new("pepito")
cl2 = Client.new("pep")
cl3 = Client.new("pipo")
cl4 = Client.new("tito")
cl5 = Client.new("tipo")

t1 = Trainer.new("Ab", [cl1])
t2 = Trainer.new("Dan", [cl2])
t3 = Trainer.new("Lee", [cl3, cl4])
t4 = Trainer.new("Joe")
t5 = Trainer.new("Fernando")

l2 = Location.new("East", [t1, t4])
l1 = Location.new("South", [t1, t2, t3])
l3 = Location.new("North", [t5])

puts "checking new al Location"

puts Location.all

puts "Checking assign_trainer in Client class"
puts cl5.assign_trainer(t4)
t4.clients.each { |c| puts c.client_name }

puts ""
puts "checking most clients in Trainer class"
puts Trainer.most_clients.trainer_name

puts ""
puts "checking least_clients"

puts Location.least_clients.location_name
