class PostsController < ApplicationController

  


  def index
    @posts = Post.all
  end


  def show
    @post = Post.find(params[:id])
  end

  
  def new
    @new_post = Post.new
  end

  
  def edit
    @post = Post.find(params[:id])
  end

  
  def create
    @new_post = Post.new(post_params)
    if @new_post.save
        redirect_to posts_path
      else
        redirect_to new_post_path
      end
	end

  def update
    @post =Post.find(params[:id])
      if @post.update_attributes(post_params)
        redirect_to posts_path
      else
        redirect_to edit_posts_path
      end
  end


  def destroy
    @post =Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
   
    
  end

  private
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params[:post].permit!
    end



end
