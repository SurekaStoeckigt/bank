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
    statement = "date || credit || debit || balance \n"
    @all_transactions.each do |trans|
      statement += "#{trans.date} || #{trans.credit}.00 || #{trans.debit} || #{trans.balance}.00\n" if trans.debit == ""
      statement += "#{trans.date} || #{trans.credit} || #{trans.debit}.00 || #{trans.balance}.00\n" if trans.credit == ""
    end
    puts statement
    return statement
  end

end
