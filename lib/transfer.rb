class Transfer
  attr_accessor :amount, :status
  attr_reader :sender, :receiver

  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid? && self.status != "complete" && sender.balance >= @amount
        @sender.balance -= @amount
        @receiver.balance += @amount
        self.status = "complete"
    end
  end
end
