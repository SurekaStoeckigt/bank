require './lib/account.rb'

describe 'Account' do
subject(:account) {Account.new(mock_history) }
let(:mock_transaction) { class_double('Transaction') }
let(:mock_history) { double('history', all_transactions: [mock_transaction], record_transaction: [])}

describe "#show_balance" do
  it 'shows current balance' do
    expect(account.display_balance).to eq("You have £0 in your account")
  end

end

  it 'allows user to make a deposit' do
    account = Account.new
    account.deposit(300)
    expect(account.balance).to eq(300)
  end

  it 'allows user to withdraw an amount less than available funds' do
    account = Account.new
    account.deposit(300)
    p account.balance
    account.withdraw(200)
    p account.balance
    expect(account.balance).to eq(100)
  end

  it 'raises an error if user tries to withdraw more money than available funds' do
    account = Account.new
    account.deposit(300)
    expect { account.withdraw(400) }.to raise_error("You cannot withdraw more money than is available in your account")
  end

 it 'only accepts positive integers' do
   expect {account.withdraw(-200) }.to raise_error("Negative integer detected: please enter a positive integer")

 end
end
