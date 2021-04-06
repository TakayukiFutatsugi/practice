class EntriesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    job = Job.find(params[:job_id])
    @entry = current_user.entry.build do |e|
      e.job = job
      client = e.job.client
    end
    if @entry.save
      redirect_to jobs_path, notice: "応募が完了しました" 
    end  
  end  
end
