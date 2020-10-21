require 'rails_helper'

RSpec.describe User, type: :model do
  
  it 'should not save if f_name field is blank' do
    user = User.new()
    user.last_name = 'bobson'
    user.email = 'bob@bob.com'
    expect(user).to be_invalid
  end

  it 'should not save if l_name field is blank' do
    user = User.new()
    user.first_name = 'bobson'
    user.email = 'bob@bob.com'
    expect(user).to be_invalid
  end

  it 'should save if all fields provided' do
    user = User.new()
    user.first_name = 'bob'
    user.last_name = 'bobson'
    user.email = 'bob@bob.com'
    expect(user).to be_valid
  end

end
