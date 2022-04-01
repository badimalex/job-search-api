class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :level, :salary, :company,
    :avatar, :rating, :activity, :created_at, :is_salary, :currency

  def activity
    JSON.parse object.activity
  end
end
