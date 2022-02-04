class Admin::BlogsController < Admin::BaseController

  before_action :authenticate_admin
  before_action :set_blog, only: [:edit, :update, :generate]

  def index
    @blogs = @current_user.blogs.page(params[:page]).per(Blog::LIMIT)
  end

  def new
    @blog = @current_user.blogs.new
  end

  def create
    @blog = @current_user.blogs.new(blog_params)
    if @blog.save
      flash[:success] = 'Successfully saved'
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit

  end

  def update
    if @blog.update(blog_params.merge(shorturl: nil))
      flash[:success] = 'Successfully updated'
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def generate
    @blog.shorturl = Blog.generate_link("#{request.base_url}#{@blog.file}")
    if @blog.save
      flash[:success] = 'Successfully generated'
      redirect_to action: :index
    else
      flash[:error] = @blog.errors.messages
      render action: :index
    end
  end

  private

  def set_blog
    @blog = Blog.find params[:id]
  end

  def blog_params
    params.require(:blog).permit(:title,
                                 :file,
                                 :description)
  end

end