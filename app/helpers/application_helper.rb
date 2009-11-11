# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(value)
    content_for :title, value
  end

  def flash_messages
    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
      end
    }

    messages
  end
end
