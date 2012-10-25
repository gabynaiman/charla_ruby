module Banking
  class Extraction
    attr_reader :amount

    def initialize(amount)
      @amount = amount.abs
    end

    def update_balance(balance)
      balance - amount
    end
  end
end