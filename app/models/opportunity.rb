class Opportunity < ActiveRecord::Base
  has_many :contact_opportunity
  has_many :contacts, through: :contact_opportunity
  has_many :notes
end
