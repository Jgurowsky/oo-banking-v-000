class BankAccount
  attr_accessor
  attr_reader :name, :balance, :status

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end
end
