require 'sidekiq'
require 'sidekiq-dynamic-queues'

Sidekiq.options[:fetch] = Sidekiq::DynamicQueues::Fetch