class Location
  attr_reader :location_name, :trainers

  @@all = []

  def initialize(location_name, trainers)
    @trainers = trainers
    @location_name = location_name
    @@all << self
  end

  def self.least_clients
    array_of_clients_num = []
    num = 0
    i = 0
    while i < Location.all.length
      Location.all[i].trainers.each { |t|
        num += t.clients.length
      }
      array_of_clients_num << num
      i += 1
      num = 0
    end
    i = 0
    num = 9999999999

    cur_index = 0
    array_of_clients_num.each { |n|
      if num > n
        num = n
        i = cur_index
      end
      cur_index += 1
    }
    return Location.all[i]
  end
  #   def self.least_clients
  #     location_least = nil
  #     num_least_clients = 0
  #     location_clients = {}
  #     Trainer.all.each { |t|
  #       t.locations.each { |l|
  #         if location_clients.key?(l) == true
  #           location_clients[l] += t.clients.length
  #         else
  #           location_clients[l] = t.clients.length
  #         end
  #       }
  #     }
  #     location_clients.each { |l, num|
  #       if num_least_clients < num
  #         num_least_clients = num
  #         location_least = l
  #       end
  #     }
  #     location_least
  #   end

  def self.all
    @@all
  end
end
