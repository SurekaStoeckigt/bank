require './lib/transaction.rb'

class History

attr_reader :all_transactions

  def initialize
    @all_transactions = Array.new
  end

  def record_transaction(credit, debit, balance)
    @all_transactions << Transaction.new(credit, debit, balance)
  end

  def show_statement
    all_transactions.each do |action|
      p action
    end

  end

end
