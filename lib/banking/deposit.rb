module Banking
  class Deposit
    attr_reader :amount

    def initialize(amount)
      @amount = amount.abs
    end

    def update_balance(balance)
      balance + amount
    end
  end
end