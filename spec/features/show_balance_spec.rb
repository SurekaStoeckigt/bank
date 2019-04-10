require './lib/account.rb'

describe 'a user can see their balance' do

  it 'a user has £0 in their account when creating a new account' do
    account = Account.new
    expect(account.display_balance).to eq('You have £0 in your account')
  end

  it 'a user has £100 in their account after depositing £100' do
    account = Account.new
    account.deposit(100)
    expect(account.display_balance).to eq('You have £100 in your account')
  end

  it 'a user has £100 in their account after depositing £100' do
    account = Account.new
    account.deposit(100)
    account.withdraw(50)
    expect(account.display_balance).to eq('You have £50 in your account')
  end

end
