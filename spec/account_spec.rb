require 'account'

describe Account do

  it 'contains an empty array called transactions in initialization' do
    expect(subject.transactions).to be_an_instance_of(Array)
  end

  it 'can make a deposit' do
    subject.deposit(100, 10 / 10 / 10)
    expect(subject.transactions).to eq([{ date: 10 / 10 / 10, credit: 100, debit: ' ', balance: 100 }])
  end

  it 'can make a withdrawal' do
    subject.withdraw(100, 10 / 10 / 10)
    expect(subject.transactions).to eq([{ date: 10 / 10 / 10, credit: ' ', debit: 100, balance: -100 }])
  end

  it 'can change the balance when more than one transaction takes place' do
    subject.deposit(300, 10 / 10 / 10)
    subject.withdraw(100, 10 / 10 / 10)
    expect(subject.transactions).to eq([{ date: 10 / 10 / 10, credit: 300, debit: ' ', balance: 300 }, { date: 10 / 10 / 10, credit: ' ', debit: 100, balance: 200 }])
  end

end
