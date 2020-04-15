class ProgressIncrementJob < ApplicationJob
  queue_as :default

  def perform(id)
    # Do something later
    sleep 1
    ActionCable.server.broadcast("progress_#{id}", "done with job")
  end
end
