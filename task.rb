class Task
  attr_accessor :title, :description, :status, :created_at

  def initialize
    @status = "incomplete"
    @created_at = DateTime.now
  end

  # def mark_as_complete!
  #   @status = "complete"
  # end

  # def mark_as_incomplete!

  # end

end
