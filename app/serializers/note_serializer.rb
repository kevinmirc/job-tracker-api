class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :opportunity_id, :created_at, :attachment
end
