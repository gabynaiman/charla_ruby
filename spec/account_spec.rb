require 'spec_helper'

describe Account do

  it 'should have balance zero' do
    account = Account.new
    account.balance.should eq 0
  end

  it 'should deposit 10' do
    account = Account.new
    account.balance.should eq 0
    account.deposit 10
    account.balance.should eq 10
  end

  it 'should extract 5' do
    account = Account.new
    account.balance.should eq 0
    account.extract 5
    account.balance.should eq -5
  end

  it 'should list all transactions' do
    account = Account.new
    account.deposit 8
    account.extract 2

    account.balance.should eq 6
    account.should have(2).transactions

    account.transactions[0].should be_a Deposit
    account.transactions[0].amount.should eq 8

    account.transactions[1].should be_a Extraction
    account.transactions[1].amount.should eq 2
  end

end