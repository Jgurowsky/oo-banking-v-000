class Transfer
  attr_accessor :amount
  attr_reader :sender, :receiver, :status

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
    if self.valid? && self.status != "complete" && @sender.balance  >= @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status.complete
    elsif
      self.status = "rejected"
      "Transaction rejected. Please check you account balance."
    end
  end
end
