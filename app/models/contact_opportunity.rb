class ContactOpportunity < ActiveRecord::Base
  belongs_to :opportunity
  belongs_to :contact
end
