class Project < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :tasks
  after_commit :execute_tasks

  def execute_tasks
    self.tasks.each do |task|
      Sidekiq::Client.push('queue' => "project_#{self.id}", 'class' => TaskWorker, 'args' => [task.id])
      TaskWorker.perform_async(task.id)
    end
  end

end
