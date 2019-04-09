require './lib/account.rb'
require './lib/history.rb'

describe 'shows formatted statement' do

it 'allows user to see their formated transaction history' do

  account = Account.new
  account.deposit(100)
  account.withdraw(50)
  expect(account.history.all_transactions).to eq(nil)
  # expect{ account.history.show_statement }.to output("date || credit || debit || balance \n06/10/2018 || 100.00 ||  || 100.00\n06/10/2018 ||  || 50.00 || 50.00\n").to_stdout

  end
end
