class Project
    attr_accessor :name, :description, :owner, :tasks

    def initialize name, description, owner = "", tasks = []
        puts 'creating Project'
        @name = name
        @description = description
        @owner = owner
        @tasks = tasks
    end

    def elevator_pitch
        "#{@name}, #{@description}"
        # puts name+','+description
    end

    def tasks
        @tasks
    end

    def add_tasks(task)
        @tasks.push(task)
    end

    def print_tasks
        @tasks.each do |task|
            puts task
        end
    end

end
# project1 = Project.new('Project 1', 'Description 1')
# puts project1.name
# project1.elevator_pitch