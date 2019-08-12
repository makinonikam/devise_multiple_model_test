class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :set_default_role_for_admin

  ROLE_ADMIN   = 'admin'

  private
  # role
  def set_default_role_for_admin
    self.role = ROLE_ADMIN
  end
end
