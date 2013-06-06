class Requirement < ActiveRecord::Base
  attr_accessible :location, :monthly_price, :note, :sf_amount, :sf_price, :user_id

  belongs_to :user
  has_many :styles, :through => :requirement_styles
end
