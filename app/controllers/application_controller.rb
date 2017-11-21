class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :set_categories_and_brands

  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_categories_and_brands
    @categories = Category.all
    @brands = Product.pluck(:brand).sort.uniq
    @category_names_and_ids = @categories.collect do |category|
      [category.name, category.id]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:role])
  end
end
