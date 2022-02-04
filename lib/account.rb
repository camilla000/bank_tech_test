require 'date'
require './lib/statement'

class Account

  attr_accessor :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []

  end

  def date
    Date.today
  end

  def account_balance
    "Your balance is £#{@balance}"
  end

  def deposit(amount)
    @balance += amount
    
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_balance
    puts "Your balance is £#{@balance}"
  end
  
end
