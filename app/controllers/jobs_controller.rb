class JobsController < ApplicationController
  def index
    @jobs = Job.all
    if params[:title].present?
      @jobs = @jobs.where("lower(title) like ?", "%#{params[:title].downcase}%")
    end
    if params[:salary].present?
      @jobs = @jobs.where("salary > ?", params[:salary])
    end
    if params[:activity].present?
      params[:activity].each do |activity|
        @jobs = @jobs.where("lower(activity) like ?", "%#{activity.downcase}%")
      end
    end
    if params[:skills].present?
      params[:skills].each do |skill|
        @jobs = @jobs.where("lower(skills) like ?", "%#{skill.downcase}%")
      end
    end
    if params[:level].present?
      @jobs = @jobs.where("lower(level) like ?", "%#{params[:level].downcase}%")
    end
    if params[:is_salary].present?
      @jobs = @jobs.where(is_salary: params[:is_salary])
    end
    if params[:currency].present?
      @jobs = @jobs.where(currency: params[:currency])
    end
    render json: @jobs.page(params[:page]).per(params[:per])
  end
end
