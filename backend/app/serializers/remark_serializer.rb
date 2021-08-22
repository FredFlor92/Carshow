class RemarkSerializer < ActiveModel::Serializer
  attributes :id, :owner, :content
end
