class PostController < ActionController::Base
    def index
        @posts = Post.all
    end
    def show
        @post = Post.find(params[:id])
    end
    def new
        @post = Post.new
    end

    def create
        @post = Post.new({title: params[:post][:title], content: params[:post][:body]})
        if @post.save
          redirect_to posts_url(@post)
        else
          render :new, status: 422
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update({title: params[:post][:title], content: params[:post][:body]})
            redirect_to post_url(@post)
        else
          render :edit, status: 422
        end
    end

  def destroy
      @post = post.find(params[:id]) 
      @post.destroy
      redirect_to posts_url
  end

end