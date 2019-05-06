module ApplicationHelper
  def login_helper
     if !current_user.is_a?(OpenStruct) 
      link_to "Logout", destroy_user_session_path, method: :delete 
     else 
      (link_to "Login", new_user_session_path) + "<br>".html_safe +
      (link_to "Register", new_user_registration_path)
     end
  end

  def source_helper(page_location)
    greeting = "Thanks for visiting me"
    if session[:source]
      greeting += " from #{session[:source]}"
    end
    greeting += " and you are on #{page_location} layout"
    content_tag(:p, greeting, class: "source-greeting")
  end
end
