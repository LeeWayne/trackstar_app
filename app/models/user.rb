class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :about, :email, :name, :password, :password_confirmation

  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, presence: true

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s

  end


  private
  def default_role
    self.role ||= :member
  end

end