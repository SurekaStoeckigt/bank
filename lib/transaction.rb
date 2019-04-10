class Transaction
attr_reader :date, :credit, :debit, :balance

  def initialize(credit =0 , debit = 0 , balance = 0 )
    @date  = Time.now.strftime("%m/%d/%Y")
    @credit = credit
    @debit = debit
    @balance = balance
  end

end
