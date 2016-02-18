class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :oppertunity_ids
end
