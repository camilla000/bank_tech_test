require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end


  it 'should have a balance of 0' do
    expect(@account.account_balance).to eq(0)
  end

  it 'should be able to deposit money' do
    @account.deposit(100)
    expect(@account.account_balance).to eq(100)
  end

  it 'should be able to withdraw money' do
    @account.deposit(100)
    @account.withdraw(30)
    expect(@account.account_balance).to eq(70)
  end


end
