require "rails_helper"

RSpec.describe Project do
  it "consider a project with no task to be done" do
    project = Project.new
    expect(project.done?).to be_truthy
  end
end
