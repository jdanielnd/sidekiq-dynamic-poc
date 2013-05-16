class TaskWorker
  include Sidekiq::Worker

  Sidekiq::DynamicQueues::Attributes.set_dynamic_queue("dynamic_queue", ["project_*"])

  def perform(task_id)
    task = Task.find(task_id)
    task.execute
    task.save
  end
end