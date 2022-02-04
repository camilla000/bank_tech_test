require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end
  before(:all) do
    @transactions = []
  end


  it 'should have a balance of 0' do
    expect(@account.account_balance).to eq 'Your balance is £0'
  end

  it 'should be able to deposit money' do
    @account.deposit(100)
    expect(@account.account_balance).to eq 'Your balance is £100'
  end

  context "withdraw" do
    it 'should be able to withdraw money' do
      @account.deposit(100)
      @account.withdraw(30)
      expect(@account.account_balance).to eq 'Your balance is £70'
    end
    
    it 'raises an error if the balance is less than the withdrawal amount' do
      expect { @account.withdraw(100) }.to raise_error "Insufficient funds"
    end
  end

 

end
