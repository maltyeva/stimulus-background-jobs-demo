class ProcessController < ApplicationController
  def index
    @id = (Time.now.to_f * 1000).to_i
    # sleep 10 # some heavy task
    ProgressIncrementJob.perform_later(@id)
  end
end
