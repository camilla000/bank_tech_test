require 'account'

describe Account do
  it 'should have a balance of 0' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  it 'should be able to deposit money' do
    account = Account.new
    expect(account.deposit(100)).to eq 100
  end

  
end