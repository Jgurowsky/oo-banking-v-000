class Transfer
  def initialize(sender, reciever, amount, status = "pending")
    @sender = sender
    @reciever = reciever
    @amount = amount
  end
end
