class Opportunity < ActiveRecord::Base
  has_many :contact_opportunity, dependent: :destroy
  has_many :contacts, through: :contact_opportunity
  has_many :notes
  belongs_to :user
end
