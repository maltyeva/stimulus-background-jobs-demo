class ProcessController < ApplicationController
  def index
    # sleep 10 # some heavy task
    ProgressIncrementJob.perform_later
  end
end
