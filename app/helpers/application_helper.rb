module ApplicationHelper
  def full_title(page_title)
    base_title = "KeystoneApp"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def show_left_menu?
    (controller_name == 'users' && action_name == 'new') || (controller_name == 'sessions' && (action_name == 'new' || action_name == 'create' )) ? false : true
  end
end
