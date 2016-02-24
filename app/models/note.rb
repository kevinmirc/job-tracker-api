class Note < ActiveRecord::Base
  belongs_to :opportunity
  mount_uploader :attachment, AttachmentUploader
end
