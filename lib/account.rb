class Account

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit(money)
    deposit = {date: Time.now.strftime("%d/%m/%y"), type: 'deposit', amount: money}
    @transactions << deposit
  end

  def withdraw(money)
    withdrawal = {date: Time.now.strftime("%d/%m/%y"), type: 'withdrawal', amount: money}
    @transactions << withdrawal
  end

end
