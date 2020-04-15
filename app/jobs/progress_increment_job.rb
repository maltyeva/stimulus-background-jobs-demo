class ProgressIncrementJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    sleep 10
  end
end
