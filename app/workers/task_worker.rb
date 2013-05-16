class TaskWorker
  include Sidekiq::Worker

  def perform(task_id)
    task = Task.find(task_id)
    task.execute
    task.save
  end
end