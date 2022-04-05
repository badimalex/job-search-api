class GraphsController < ApplicationController
  def index
    salary = (1..12).map do |month|
      Job.with_year_and_month(2022, month).average(:salary)
    end

    activity = [
        'Backend',
        'Frontend',
        'Applications',
        'Testing',
        'Administration',
        'Design',
        'Management',
        'Marketing',
        'Analytics'
    ].map do |skill|
      hash = {}
      hash[skill] =  Job.where("lower(activity) like ?", "%#{skill.downcase}%").count
      hash
    end

    render json: {
      salary_medium_per_month: salary,
      activity_count:activity,
    }
  end
end
