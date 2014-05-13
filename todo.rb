class Todo
  def initialize
    @tasks
  end
  def add_task(task)
    raise if task.class != Task
  end

  def complete_all!
  end
end
