class Project < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :tasks
  after_create :execute_tasks

  def execute_tasks
    self.tasks.each do |task|
      task.execute
      task.save!
    end
  end

end
