class Project
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def done?
    tasks.empty?(&:complete?)
  end
end
