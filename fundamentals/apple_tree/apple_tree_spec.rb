require_relative 'apple_tree'

RSpec.describe AppleTree do
    before(:each) do
        @newtonsAppleTree = AppleTree.new(10, 0, 2)
        @bigRed = AppleTree.new(100, 200, 150)
    end

    context 'has setters and getters for the age and height' do
        it 'has a setter and getter for age' do
            @newtonsAppleTree.age = 2450
            expect(@newtonsAppleTree.age).to eq(2450)
        end

        it 'has a getter with an error response for height' do 
            expect(@newtonsAppleTree.height).to eq(10)
            expect{@newtonsAppleTree.height = 11}.to raise_error(NoMethodError)
        end
    end
    
    context 'where we deal with the apples and growing methods ' do
        it 'has a getter with an error response for apple count' do
            expect(@newtonsAppleTree.apple_count).to eq(0)
            expect{@newtonsAppleTree.apple_count = 4}.to raise_error(NoMethodError)
        end

        it 'should not grow apples for the first three years of life' do
            expect{@newtonsAppleTree.year_gone_by}.to raise_error(BubbaError)
        end

        it 'has a setter for the pick_apples method' do
            expect(@bigRed.pick_apples).to eq(0)
        end

        it 'should not grow apples for the first three years of life' do
            expect{@bigRed.year_gone_by}.to raise_error(RuntimeError)
        end  
    end
end