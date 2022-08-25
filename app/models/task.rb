class Task
  def initialize
    @complete = false
  end

  def mark_complete
    @complete = true
  end

  def complete?
    @complete
  end
end
