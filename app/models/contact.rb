class Contact < ActiveRecord::Base
  has_many :contact_opportunity
  has_many :opportunities, through: :contact_opportunity
end
