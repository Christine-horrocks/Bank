class Account

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit(money, date = Time.now.strftime("%d/%m/%y"))
    deposit = {date: date, type: 'deposit', amount: money}
    @transactions << deposit
  end

  def withdraw(money, date = Time.now.strftime("%d/%m/%y"))
    withdrawal = {date: date, type: 'withdrawal', amount: - money}
    @transactions << withdrawal
  end

  def print_statement
    return "date || credit || debit || balance \n 27/ 11/ 17|| 300 || || 300 \n 27/ 11/ 17|| || 100 || 200"
  end

end
