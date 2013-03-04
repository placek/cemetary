class StaticPagesController < ApplicationController
  layout "static_pages"
  def news; end
  def history; end
  def partners; end
  def contact; end
end
