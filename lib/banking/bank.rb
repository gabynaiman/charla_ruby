module Banking
  class Bank

    def accounts
      @accounts ||= {}
    end

    def create_account(id)
      accounts[id] = Account.new
    end

  end
end