class PostsController < InheritedResources::Base
  layout "static_pages"
  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    @post = Post.find(params[:id])
    respond_with(@post)
  end
end
