class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:index, :dashboard]
  
  def index
  end
  
  def dashboard
    @user = User.includes([:metrics, :events]).find_by_id(current_user.id)
    
  end
  
  def report
    @user = User.includes([:metrics, :events]).find_by_id(current_user.id)
    
  end
end
