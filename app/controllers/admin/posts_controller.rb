class Admin::PostsController < Admin::BaseController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params_post
    if @post.save
      flash[:success] = "Tạo bài viết thành công!"
      redirect_to admin_posts_path
    else
      render "new"
    end
  end

  def show
    @post = Post.find_by id: params[:id]
  end

  def edit
    @post = Post.find_by id: params[:id]
  end

  def update
    @post = Post.find_by id: params[:id]
    if @post.update_attributes params_post
      flash[:success] = "Cập nhật bài viết thành công!"
      redirect_to admin_posts_path
    else
      render "edit"
    end
  end

  def destroy
    Post.find_by(id: params[:id]).destroy
    flash[:success] = "Xoá bài viết thành công !"
    redirect_to admin_posts_path
  end

  private
  def params_post
    params.require(:post).permit(Post::ATTRS)
  end
end
