class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :level, :salary, :company,
    :avatar, :rating, :activity, :created_at, :is_salary, :skills, :currency

  def activity
    JSON.parse object.activity
  end

  def skills
    JSON.parse object.skills
  end
end
