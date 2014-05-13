require "rspec"
#require "shoulda"

require "./todo.rb"
require "./task.rb"

describe Task do
  let(:task) { Task.new }
  subject { task }
   context "Attributes" do
    #A task should have attributes title, description, status (either incomplete or complete), and a created_at timestamp
    it { should respond_to(:title) }
    it { should respond_to(:description) }
    it { should respond_to(:status) }
    it { should respond_to(:created_at) }

   end

  context "Default Values" do
    # A task's default status is "incomplete"
    # A task's created_at timestamp should be automatically set on initialization
    it "should have default status of imcomplete" do
      task.status.should eq("incomplete")
    end

    it "should have a created_at timestampe" do
      task.created_at.should be_a(Time) # *******Could not access DateTime
    end

  end

  context "Methods " do
    # A task should have a method mark_as_complete! which sets its status to complete
    # A task should have a method mark_as_incomplete! which sets its status to incomplete
    # A task should have a method complete? which returns a boolean indicating whether or not it has been completed

    it { should respond_to(:'mark_as_complete!') }

    it "should have a method mark_as_complete sets status to complete" do
      task.status = "incomplete"
      task.mark_as_complete!
      task.status.should eq("complete")
    end

    it { should respond_to(:'mark_as_incomplete!') }

    it "should have a method mark_as_incomplete sets status to incomplete" do
      task.status = "complete"
      task.mark_as_incomplete!
      task.status.should eq("incomplete")
    end

    context "when status is finished" do
      it { should be_complete }
    end

  end
end

describe Todo do
  let(:todo) {Todo.new }
  let(:task) { Task.new }

  subject { todo }

  context "Associations" do
# Requires Active Record?
# A todo list has many tasks
#    it { should have_many(:tasks) }
  end

  # Tasks can be added to the todo list using a method add_task(task)
  context "#add_task" do
    it { should respond_to(:add_task) }

    it "should accept ( task ) as a parameter" do
      expect { todo.add_task(task) }.to_not raise_error
   end

    it "should not accept ( !task ) as a parameter" do
       expect { todo.add_task(1) }.to raise_error
    end
  end

  context "#complete_all" do
    it { should respond_to(:complete_all!) }

    it "should mark all tasks as complete" do
      Task.all.status = "incomplete"
      task.mark_as_complete!
      task.status.should eq("complete")
    end
  end

  # A todo list has a method completed_tasks which returns an array of its completed tasks

  # A todo list has a method incomplete_tasks which returns an array of its incompleted tasks

  # A todo list has a method complete? which returns a boolean indicating whether or not all of its tasks have been completed



  # A todo list has a method complete_all! which marks all of its tasks as complete


end


# A task should have attributes title, description, status (either incomplete or complete), and a created_at timestamp
# A task's default status is "incomplete"
# A task's created_at timestamp should be automatically set on initialization
# A task should have a method mark_as_complete! which sets its status to complete
# A task should have a method mark_as_incomplete! which sets its status to incomplete
# A task should have a method complete? which returns a boolean indicating whether or not it has been completed
# A todo list should have a title

# A todo list has a method complete? which returns a boolean indicating whether or not all of its tasks have been completed
# A todo list has a method completed_tasks which returns an array of its completed tasks
# A todo list has a method incomplete_tasks which returns an array of its incompleted tasks
