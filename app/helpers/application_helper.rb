module ApplicationHelper
  #helper_method :sidebar_values
   def sidebar_values
    @food_preferences = FoodPreference.all 
    @food_types = FoodType.all 
    @cuisines = Cuisine.all
  end
end
