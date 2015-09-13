class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post, notice: "You made a new post, awesome job!!!"
		else
			render 'new', notice: "Oh no, something went wrong!"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: "Successfully saved."
		else
			render 'edit', notice: "Post could not be updated"
		end
	end

	private
	def post_params
		params.require(:post).permit(:title, :content)
	end

	def find_post
    @post = Post.find(params[:id])
	end

end
