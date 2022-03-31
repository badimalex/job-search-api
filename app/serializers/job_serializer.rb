class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :salary, :company, :avatar, :rating, :skills, :created_at

  def skills
    JSON.parse object.skills
  end
end
