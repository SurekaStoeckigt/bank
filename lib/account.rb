require './lib/history.rb'

class Account
  attr_reader :balance, :history

  def initialize(history = History.new)
    @balance = 0
    @history = history
  end

  def deposit(amount)
    @balance += amount
    @history.record_transaction(amount, "", @balance)
  end

  def withdraw(amount)
    raise "You cannot withdraw more money than is available in your account" if @balance < amount
    @balance -=amount
  end

  def display_balance
    "You have £#{@balance} in your account"
  end

end
