class Trainer
  attr_reader :trainer_name, :clients

  def initialize(trainer_name, clients = [])
    @trainer_name = trainer_name
    @clients = clients
  end

  def self.most_clients
    num_of_clients = 0
    pop_trainer = nil
    Location.all.each { |l|
      l.trainers.each { |t|
        if num_of_clients < t.clients.length
          num_of_clients = t.clients.length
          pop_trainer = t
        end
      }
    }
    return pop_trainer
  end

  #   def self.most_clients
  #     num_of_clients = 0
  #     pop_trainer = nil
  #     self.all.each { |t|
  #       if pop_trainer < t.clients.length
  #         num_of_clients = t.clients.length
  #         pop_trainer = t
  #       end
  #     }
  #     pop_trainer
  #   end

  # def self.all
  #   @@all
  # end
end
