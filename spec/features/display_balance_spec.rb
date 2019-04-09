require './lib/account.rb'

describe 'a user can see their balance' do

  it 'a user has £0 in their account when creating a new account' do
    account = Account.new
    expect(account.display_balance).to eq('You have £0 in your account')
  end

end
