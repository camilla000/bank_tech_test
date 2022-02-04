require 'statement'
require 'date'

describe Statement do
  before(:each) do
    @statement = Statement.new([Date.today], [0], [0], [0])
  end

  it 'prints a statement table title' do
    expect(@statement.print_statement_title).to eq("date || credit || debit || balance\n")
  end
end