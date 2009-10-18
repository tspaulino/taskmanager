# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(value)
    content_for :title, value
  end
end
