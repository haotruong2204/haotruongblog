class Admin::AboutsController < Admin::BaseController
  def index
    @q = About.ransack(params[:q])
    @abouts = @q.result.page(params[:page]).per(Settings.per_page.default)
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new params_about
    if @about.save
      flash[:success] = "Create About Post Success!"
      redirect_to admin_abouts_path
    else
      render "new"
    end

  end

  def show
    @about = About.find_by id: params[:id]
  end

  def edit
    @about = About.find_by id: params[:id]
  end

  def update
    @about = About.find_by id: params[:id]
    if @about.update_atrriutes params_about
      flash[:success] = "Update About Post Success!"
      redirect_to admin_abouts_path
    else
      render "edit"
    end
  end

  def destroy
    About.find_by(id: params[:id]).destroy
    flash[:success] = "Delete Post Success."
    redirect_to admin_abouts_path
  end

  private
  def params_about
    params.require(:about).permit(About::ATTRS)
  end
end
