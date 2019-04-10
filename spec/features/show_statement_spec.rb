require './lib/account.rb'
require './lib/history.rb'
require './lib/transaction.rb'

describe 'shows formatted statement' do

it 'allows user to see their formated transaction history' do
#need a double of the transaction class
allow_any_instance_of(Transaction).to receive(:date).and_return("10/04/2019")
# subject(:transaction) {Transaction.new(100,0,100) }
# let(:mock_transaction) { class_double('Transaction') }
# let(:mock_history) { double('history', all_transactions: [mock_transaction], record_transaction: [])}
#

  account = Account.new
  account.deposit(100)
  account.withdraw(50)
  expect(account.history.all_transactions).not_to eq(Array.new)
  expect{ account.history.show_statement }.to output("date || credit || debit || balance \n10/04/2019 || 100.00 ||  || 100.00\n10/04/2019 || 50.00 ||  || 50.00\n").to_stdout

  end
end
