class ApplicationController < ActionController::Base
  include DeviseWhitelist
	include SetSource
  include CurrentUser
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = HelioViewTool::Renderer.copyright 'Helio Duarte', 'All rights reserved'
  end
end