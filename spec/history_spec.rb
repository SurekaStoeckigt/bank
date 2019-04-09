require './lib/account.rb'
require './lib/history.rb'

describe 'Transaction history' do

  it 'can display transaction history to user' do
    account = Account.new
    expect(account.history.all_transactions).to eq(Array.new)
  end

  it 'can record a deposit' do
    account = Account.new
    account.deposit(100)
    expect(account.history.all_transactions).not_to eq(Array.new)
  end

end
