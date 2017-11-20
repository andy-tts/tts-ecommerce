class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :set_categories_and_brands

  def set_categories_and_brands
		@categories = Category.all
		@brands = Product.pluck(:brand).sort.uniq
    @category_names_and_ids = @categories.collect do |category|
    [category.name, category.id]
    end
  end
end
