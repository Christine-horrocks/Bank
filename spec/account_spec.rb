require 'account'

describe Account do

  it 'contains an empty array called transactions in initialization' do
    expect(subject.transactions).to be_an_instance_of(Array)
  end

  it 'can make a deposit to the account' do
    subject.deposit(100)
    expect(subject.transactions).to eq([{type: 'deposit', amount: 100}])
  end

  it 'can make a withdrawal on the account' do
    subject.withdraw(100)
    expect(subject.transactions).to eq([{type: 'withdrawal', amount: 100}])
  end
end
