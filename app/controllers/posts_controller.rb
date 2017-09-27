class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def create
        post = Post.create(
                            user_id: current_user.id,
                            text: params[:text]
                            )
        if post.save
            flash[:success] = "Gobble Gobble"
            redirect_to '/'
        else
            flash[:warning] = "Uh oh, something went wrong"
            redirect_to '/'
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.assign_attributes(
                                user_id: current_user.id,
                                text: params[:text]
                                )

        if @post.save
            flash[:success] = "Gobble Updated"
            redirect_to '/'
        else
            flash[:warning] = "Uh Oh, something went wrong"
            render 'edit.html.erb'
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        flash[:danger] = "Gobble Destroyed"
        redirect_to '/'
    end
end
