require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do
        #creating bankaccounts so we can check things
        @wellfargo = BankAccount.new(1,1000,200)
        @chase = BankAccount.new(2,250,500,0.2)
    end

    context 'when we are trying to see the checking account balance and overall balance' do
        it 'has a getter method to retrieve the checking account balance' do
            expect(@wellfargo.display_checkings).to eq(1000)
            expect(@chase.display_checkings).to eq(250)
        end
        it 'has a getter method to retrieve the total account balance' do
            expect(@wellfargo.display_balance).to eq(1200)
            expect(@chase.display_balance).to eq(750)
        end
    end

    context 'when we want to deal with withdrawing' do
        it 'checking the withdraw function' do
            @wellfargo.withdraw(400, "checkings")
            expect(@wellfargo.display_checkings).to eq(600)
        end
        it 'checking to see if you have an error when withdrawing too much' do
            expect{@chase.withdraw 400, "checkings" }.to raise_error(RuntimeError)
        end
    end
end