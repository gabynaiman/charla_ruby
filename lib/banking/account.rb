module Banking
  class Account

    def transactions
      @transactions ||= []
    end

    def balance
      transactions.inject(0) { |accumulated, transaction| transaction.update_balance(accumulated) }
    end

    def deposit(amount)
      transactions << Deposit.new(amount)
    end

    def extract(amount)
      transactions << Extraction.new(amount)
    end

  end
end