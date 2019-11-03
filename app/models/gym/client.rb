class Client
  attr_reader :client_name

  def initialize(client_name)
    @client_name = client_name
  end

  def assign_trainer(trainer)
    trainer.clients << self #later write a function to check if client already 
    #excist in trainer.clients array
  end
end
