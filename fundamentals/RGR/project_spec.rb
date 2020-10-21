require_relative 'project'
RSpec.describe Project do
    before(:each) do 
        @project1 = Project.new("Name", "Description")
    end

    it "has a getter and setter for name attribute" do
    expect(@project1.name).to eq("Name")
    end
    it "has a getter and setter for the description attribute" do
    expect(@project1.description).to eq("Description")
    end
    it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Name, Description")
    end
end