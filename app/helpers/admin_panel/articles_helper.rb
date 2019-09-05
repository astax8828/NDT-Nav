module AdminPanel::ArticlesHelper
  # The Helper of a link for a model of a category.
  def category_link variable
    if variable.category.nil? == false
      return link_to variable.category.name, variable.category
    end
  end

end
