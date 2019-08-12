class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when User
      user_index_path
    when Admin
      admin_index_path
      when Advisor
        advisor_index_path
    end
  end
end
