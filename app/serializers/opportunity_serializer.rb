class OpportunitySerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :description, :contact_ids, :note_ids, :user_id
end
