require_relative 'account'

class Statement

  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance

  end

  def print_statement_title
    "date || credit || debit || balance\n"
  end

  def print_statement
    statement = print_statement_title
    puts statement
    @date.each_with_index do |date, index|
      statement += "#{date} || #{@credit[index]} || #{@debit[index]} || #{@balance[index]}\n"
    end
  end
end