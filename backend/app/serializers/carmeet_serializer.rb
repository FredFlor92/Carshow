class CarmeetSerializer < ActiveModel::Serializer
  attributes :id, :time, :date, :location, :title, :owner
end
