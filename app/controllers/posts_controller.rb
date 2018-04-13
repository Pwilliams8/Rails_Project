class PostsController < ApplicationController


	def index
		@title = 'MPGL TT WiKi'
		@posts = Post.all
	end


	def new
		#Empty Post object
		@title = 'Create New MPGL TT Entry'
		@post=Post.new

	end


	def create
		#Capture the form information
		post_params = params.require(:post).permit(:title, :author, :body)
		@post = Post.new(post_params)
		@post.save

		redirect_to @post 
	end



	def edit
		#Find the post that we want to edit
		@title = 'Edit MPGL TT Entry'
		@post=Post.find(params[:id])

	end


	def update 
		@post=Post.find(params[:id])
		post_params = params.require(:post).permit(:title, :author, :body)
		@post.update(post_params)
		redirect_to @post 

	end


	def show
		@title = 'Show MPGL TT Entry'
		@post = Post.find(params[:id])
	end



	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end




end
