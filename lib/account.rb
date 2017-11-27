class Account

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit(money)
    deposit = {type: 'deposit', amount: money}
    @transactions << deposit
  end

end
