class User < ActiveRecord::Base
  attr_accessible :company, :email, :first_name, :last_name, :password, :password_confirmation

  has_secure_password

  validates :email, uniqueness: true

  has_many :requirements

  before_create :lowercase_email

  def lowercase_email
    self.email = self.email.downcase
  end

end
