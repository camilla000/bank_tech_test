require 'statement'
require 'date'

describe Statement do
  before(:each) do
    @statement = Statement.new([Date.today], [0], [0], [0])
  end

  it 'prints a statement table title' do
    expect(@statement.print_statement_title).to eq("date || credit || debit || balance\n")
  end

  it 'can print the statement' do
    statement = "date || credit || debit || balance\n"
    expect { @statement.print_statement }.to output(statement).to_stdout
  end
end