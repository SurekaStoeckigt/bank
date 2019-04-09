require './lib/account.rb'

describe 'Account' do

  it 'allows user to make a deposit' do
    account = Account.new
    account.deposit(300)
    expect(account.balance).to eq(300)
  end

  it 'allows user to withdraw an amount less than available funds' do
    account = Account.new
    account.deposit(300)
    account.withdraw(200)
    expect(account.balance).to eq(100)
  end

end
