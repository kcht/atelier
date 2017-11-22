class Category < ActiveYaml::Base
  set_root_path 'db/data'

  def books
    ::Book.where(category_id: self.id)
  end

  def similar_books
    ::Book.where(category_id: similar_category_ids)
  end

  private

  def similar_category_ids
    similar_categories.map{ |category| Category.find_by(name: category).id }
  end
end
