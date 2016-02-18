class User < ActiveRecord::Base
  has_many :opportunities
end
