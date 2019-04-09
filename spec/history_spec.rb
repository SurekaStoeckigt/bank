require './lib/account.rb'
require './lib/history.rb'

describe 'Transaction history' do

  it 'can display transaction history to user' do
    account = Account.new
    expect(account.history.all_transactions).to eq(nil)
  end

end
