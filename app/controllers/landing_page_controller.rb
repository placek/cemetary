class LandingPageController < ApplicationController
  def index
    @parts = Part.all
    @posts = Post.per_page_kaminari(params[:page])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def about_tonsc
  end
end
