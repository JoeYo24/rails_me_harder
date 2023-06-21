class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        @post = Post.create(username: params[:username], content: params[:content], time: params[:time])
        #render plain: "Hello World!"
        render 'posts/create.jbuilder'
    end
    def index
        @posts = Post.all
        render 'posts/index.jbuilder'
    end
end
