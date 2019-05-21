module ApplicationHelper
  def login_helper style=''
     if !current_user.is_a?(GuestUser) 
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
     else 
      (link_to "Login", new_user_session_path, class: style) + " ".html_safe +
      (link_to "Register", new_user_registration_path, class: style)
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

  def copyright_generator
    HelioViewTool::Renderer.copyright 'Helio Duarte', 'All rights reserved'
  end
  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: tech_news_path,
        title: 'Tech News'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts alert=nil
    alert = (alert || flash[:alert] || flash[:notice] || flash[:error])
    if alert  
      js add_gritter(alert, title: "Helio Duarte Portfolio")
    end
  end
end
