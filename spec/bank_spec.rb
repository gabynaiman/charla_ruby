require 'spec_helper'

describe Bank do

  it 'should create an account' do
    bank = Bank.new
    bank.should have(:no).accounts
    account = bank.create_account 123
    account.balance.should eq 0
    bank.accounts.should have_key 123
  end

  it 'should find an account' do
    bank = Bank.new
    account = bank.create_account 123
    account.deposit 4
    bank.accounts[123].balance.should eq 4
  end

end