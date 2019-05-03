module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title, :set_keywords
  end

  def set_title
    @page_title = "Home | Helio"
  end

  def set_keywords
    @seo_keywords = "Helio Duarte Filho blog site portfolio site"
  end

end