class Account
  attr_reader :transactions
  attr_accessor :balance

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(money, date = Time.now.strftime('%d / %m / %y'))
    @balance += money
    deposit = { date: date, credit: money, debit: ' ', balance: @balance }
    @transactions << deposit
  end

  def withdraw(money, date = Time.now.strftime('%d / %m / %y'))
    @balance -= money
    withdrawal = { date: date, credit: ' ', debit: money, balance: @balance }
    @transactions << withdrawal
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @transactions.each do |t|
      puts "#{t[:date]} || #{t[:credit]} || #{t[:debit]} || #{t[:balance]}"
    end
  end

end
