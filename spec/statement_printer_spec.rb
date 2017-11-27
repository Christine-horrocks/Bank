require 'statement_printer'

describe Statement_printer do

  it 'can print out the statement' do
    subject.deposit(300, 10 / 10 / 10)
    subject.withdraw(100, 10 / 10 / 10)
    expect(subject.print_statement).to be("date || credit || debit || balance" "10/10/10|| 300 || || 300" "10/10/10|| || 100 || 200")
  end
  
end
