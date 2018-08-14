class Transfer
  attr_accessor :amount
  attr_reader :sender, :reciever, :status

  def initialize(sender, reciever, amount, status = "pending")
    @sender = sender
    @reciever = reciever
    @amount = amount
  end
end
