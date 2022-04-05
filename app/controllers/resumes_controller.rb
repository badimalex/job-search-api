class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
    if params[:level].present?
      @resumes = @resumes.where("lower(level) like ?", "%#{params[:level].downcase}%")
    end
    if params[:experience].present?
      @resumes = @resumes.where("experience > ?", params[:experience])
    end
    if params[:tags].present?
      params[:tags].each do |tag|
        @resumes = @resumes.where("lower(tags) like ?", "%#{tag.downcase}%")
      end
    end
    render json: {
      data: @resumes.page(params[:page]).per(params[:per]),
      total: @resumes.count
    }
  end
end
