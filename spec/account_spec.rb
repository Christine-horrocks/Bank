require 'account'

describe Account do

  it 'contains an empty array called transactions in initialization' do
    expect(subject.transactions).to be_an_instance_of(Array)
  end
end
