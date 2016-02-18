class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :opportunity_ids
end
