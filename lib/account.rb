class Account

  attr_accessor :balance

  def initialize
    @balance = 0
  end


  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    amount = 50
  end
  
end
