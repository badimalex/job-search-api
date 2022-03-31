class JobsController < ApplicationController
  def index
    @jobs = Job.all
    if params[:title]
      @jobs = @jobs.where("lower(title) like ?", "%#{params[:title].downcase}%")
    end
    if params[:salary]
      @jobs = @jobs.where("salary > ?", params[:salary])
    end
    if params[:skills]
      params[:skills].each do |skill|
        @jobs = @jobs.where("lower(skills) like ?", "%#{skill.downcase}%")
      end
    end
    render json: @jobs.page(params[:page]).per(params[:per])
  end
end
