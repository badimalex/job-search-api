class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :avatar, :is_search_job,
    :tags, :experience, :created_at, :city, :country

  def tags
    JSON.parse object.tags
  end
end
