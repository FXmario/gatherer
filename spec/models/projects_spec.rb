require "rails_helper"

RSpec.describe Project do
  let(:project) { Project.new }
  let(:task) { Task.new }
  
  it "consider a project with no task to be done" do
    expect(project.done?).to be_truthy
  end
  
  it "knows that a project with an incomplete task is not done" do
    project.tasks << task
    expect(project.done?).to be_falsy
  end

  it "marks a project done if its task are done" do
    project.tasks << task
    task.mark_complete
    expect(project).to be_done
  end
end
