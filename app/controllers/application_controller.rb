class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :sidebar_values
  include ApplicationHelper
  #layout :layout_by_resource
  before_filter :sidebar_values
  
  def sidebar_values
    @food_preferences = FoodPreference.all 
    @food_types = FoodType.all 
    @cuisines = Cuisine.all
  end

  def layout_by_resource
    if devise_controller?
      "authentication"
    else
      "application"
    end
  end
end