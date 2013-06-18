class LandingPageController < ApplicationController
  def index
    @posts = Post.per_page_kaminari(params[:page])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
