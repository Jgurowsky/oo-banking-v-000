class Transfer
  attr_accessor :amount
  attr_reader :sender, :receiver, :status

  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
end
