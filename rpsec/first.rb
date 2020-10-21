require_relative 'firstapp'

RSpec.describe 'Users can buy a soda' do

    before(:each) do
        @buyer = Buyer.new
    end
    
    context 'when the user has money' do
        
        it 'they buy the soda' do
            @buyer.money = 10
            expect(@buyer.buy_soda).to eq(true)
        end
        it 'buys the soda and users money decreases' do
            @buyer.money = 10
            expect(@buyer.buy_soda).to eq(true)
            @buyer.money.should < 10
        end

    end

    context 'when the user has no money' do

        it 'they dont buy the soda' do
            @buyer.money = 0
            expect(@buyer.buy_soda).to eq(false)
        end
    end
end