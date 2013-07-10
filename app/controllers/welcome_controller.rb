class WelcomeController < ApplicationController
  skip_before_filter :require_user

  access_control :acl do
    allow all
  end

  def index
    
    if current_user
      redirect_to programs_dash_path
    end
  end
end
