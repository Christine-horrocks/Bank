require 'account'

describe Account do

  it 'contains an empty array called transactions in initialization' do
    expect(subject.transactions).to be_an_instance_of(Array)
  end

  it 'can make a deposit to the account' do
    subject.deposit(100, 10/10/10)
    expect(subject.transactions).to eq([{date: 10/10/10, type: 'deposit', amount: 100}])
  end

  it 'can make a withdrawal on the account' do
    subject.withdraw(100, 10/10/10)
    expect(subject.transactions).to eq([{date: 10/10/10, type: 'withdrawal', amount: -100}])
  end

  it 'can print out the statement' do
    subject.deposit(300)
    subject.withdraw(100)
    expect(subject.print_statement).to eq("date || credit || debit || balance \n 27/ 11/ 17|| 300 || || 300 \n 27/ 11/ 17|| || 100 || 200" )
  end
end
