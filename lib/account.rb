class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -=amount
  end

  def display_balance
    "You have £#{@balance} in your account"
  end

end
