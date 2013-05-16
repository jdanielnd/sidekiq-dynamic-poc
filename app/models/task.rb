class Task < ActiveRecord::Base
  attr_accessible :done, :name, :project_id
  belongs_to :project

  def execute
    sleep 20
    self.done = true
  end
end
