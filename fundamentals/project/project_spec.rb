require_relative 'project'
RSpec.describe Project do
    before(:each) do
        # updated this block to create two projects
        @project1 = Project.new('Project 1', 'description 1', "John Doe", [])
        @project2 = Project.new('Project 2', 'description 2', "Chris Thompson", [2,3])
    end

    context 'when we are trying to establish name and description' do
        it 'has a getter and setter for name attribute' do
            @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
            expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
        end 
        it 'has a method elevator_pitch to explain name and description' do
            expect(@project1.elevator_pitch).to eq("Project 1, description 1")
            expect(@project2.elevator_pitch).to eq("Project 2, description 2")
        end
    end

    context 'when we are checking the owner' do
        it 'has a getter and setter for the owner attribute' do
            @project1.owner = "Changed Owner" # this line would fail if our class did not have a setter method
            expect(@project1.owner).to eq("Changed Owner") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
        end
    end

    context 'when we are going through all the tasks and adding tasks' do
        it 'has a method tasks to return all tasks of related project' do
            expect(@project1.tasks).to eq([])
            expect(@project2.tasks).to eq([2,3])
        end
        it 'has a method add_tasks that should push a single task into the owners tasks' do
            @project1.add_tasks(3)
            expect(@project1.tasks).to eq([3])
        end
        it 'has a method print_tasks that will loop through the array and print all owners tasks' do
            expect(@project1.print_tasks()). to eq([])
            expect(@project2.print_tasks()). to eq([2,3])
        end
    end
end