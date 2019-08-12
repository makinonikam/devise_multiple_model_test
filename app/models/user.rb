class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :set_default_role_for_user

  ROLE_WORKER  = 'worker'

  private
  # role
  def set_default_role_for_user
    self.role = ROLE_WORKER
  end
end
