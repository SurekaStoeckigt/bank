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

  it 'raises an error if user tries to withdraw more money than available funds' do
    account = Account.new
    account.deposit(300)
    expect { account.withdraw(400) }.to raise_error("You cannot withdraw more money than is available in your account")
  end

  it 'raises error if user tries to withdraw negative amount' do
  end

  it 'raises error if user tries to deposit negative amount' do
  end

end
