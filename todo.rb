class Todo
  #has_many :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    if task.kind_of? Task
        @tasks << task
    else
      raise 100
    end

  end
end
