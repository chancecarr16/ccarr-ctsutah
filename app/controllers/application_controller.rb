class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  
  before_filter :set_title
  before_filter :set_copyright
  
  def set_title
    @page_title = "Devcamp Portfolio | My Portfolio Website"
  end
  def set_copyright
    @copyright = DynamicCopyright::Renderer.copyright 'Chance Carr', 'All rights reserved'
  end
end

module DynamicCopyright
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
      end
    end
end
