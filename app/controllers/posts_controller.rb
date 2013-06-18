class PostsController < InheritedResources::Base
  def index
    @posts = Post.all
    respond_to do |format|
      format.atom { render layout: false }
    end
  end

  def show
    @post = Post.find(params[:id])
    respond_with(@post) do |format|
      format.js
    end
  end
end
