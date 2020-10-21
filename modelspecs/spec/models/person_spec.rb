require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'should save' do
    expect(build(:person, :male)).to be_valid
    expect(build(:person, :female)).to be_valid
  end

  it 'should be bob when male' do
    expect(build(:person, :male).first_name).to eq('Bob')
  end

  it 'should not save with blank f_name' do
    expect(build(:person, first_name: '')).to be_invalid
  end

end
