class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
    if params[:level]
      @resumes = @resumes.where("lower(level) like ?", "%#{params[:level].downcase}%")
    end
    if params[:experience]
      @resumes = @resumes.where("experience > ?", params[:experience])
    end
    if params[:tags]
      params[:tags].each do |tag|
        @resumes = @resumes.where("lower(tags) like ?", "%#{tag.downcase}%")
      end
    end
    render json: @resumes.page(params[:page]).per(params[:per])
  end
end
