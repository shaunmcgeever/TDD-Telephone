class Task
  attr_accessor :title, :description, :status, :created_at
  def initialize()
    # @title = args.fetch(:title)
    # @description = args.fetch(:description)
    @status = "incomplete"
    @created_at = Time.now
  end

  def mark_as_complete!
    @status = "complete"
  end

  def mark_as_incomplete!
    @status = "incomplete"
  end

  def complete?
    true
  end

  def self.all
    task = Task.new
    task.title = "yep"
    task.description = "uh huh"
    task.status = "complete"
    task
  end
end

# task = Task.new({title: "bob", description: "he's a fatty", status: "complete"})
# p task.title

